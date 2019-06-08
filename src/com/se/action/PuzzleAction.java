package com.se.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Puzzle;
import com.se.pojo.Solution;
import com.se.pojo.Student;
import com.se.service.PuzzleService;
import com.se.util.JSONUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class PuzzleAction extends ActionSupport {
	
	private Puzzle puzzle;
	private Integer puzzleId;
	private String description;
	private List<Puzzle> puzzles;
	private List<Solution> solutions;
	private PuzzleService puzzleService = new PuzzleService();
	private Page page = new Page(0, 5);
	private String result;
	
	//获取问题
	public String get() {
		puzzle = puzzleService.get(puzzle.getPuzzleId());
		return "listPuzzlesSolution";
	}
	
	//保存问题
	public void save() {
		autowire();
		if(puzzle != null&&(puzzle.getDescription() == null||"".equals(puzzle.getDescription())))
			result = "问题描述不能为空-.-";
		else {
			if(!puzzleService.save(puzzle))
				result = "新建问题失败-.-";
			else 
				result = "新建成功(;";
		}
		JSONUtils.printResult(result);
	}
	
	//编辑问题
	public void edit() {
		autowire();
		if(puzzle != null&&(puzzle.getDescription() == null||"".equals(puzzle.getDescription())))
			result = "问题描述不能为空-.-";
		else {
			if(!puzzleService.edit(puzzle))
				result = "保存修改失败-.-";
			else 
				result = "修改成功(;";
		}
		JSONUtils.printResult(result);
	}
	
	//删除问题
	public void delete() {
		if(!puzzleService.deleteById(puzzle.getPuzzleId()))
			result = "删除失败-.-";
		else
			result = "删除成功(;";
		JSONUtils.printResult(result);
	}
	
	//问题列表
	public String listAll() {
		puzzles = puzzleService.listByPage(page);
		return "listAllPuzzle";
	}
	
	//指定学生问题列表
	public String listStus() {
		autowire();
		puzzles = puzzleService.listStusByPage(puzzle.getStudent().getId(), page);
		return "listStusPuzzle";
	}
	
	//获取一个问题及其答案
	public String getDetail() {
		puzzle = puzzleService.get(puzzle.getPuzzleId());
		return "listPuzzlesSolution";
	}

	private void autowire() {
		puzzle = new Puzzle();
		Student stu = new Student();
		stu.setId(SessionUtils.getUserId());
		puzzle.setStudent(stu);
		puzzle.setPuzzleId(puzzleId);
		puzzle.setDescription(description);
	}
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Puzzle getPuzzle() {
		return puzzle;
	}

	public void setPuzzle(Puzzle puzzle) {
		this.puzzle = puzzle;
	}

	public List<Puzzle> getPuzzles() {
		return puzzles;
	}

	public void setPuzzles(List<Puzzle> puzzles) {
		this.puzzles = puzzles;
	}

	public void setSolutions(List<Solution> solutions) {
		this.solutions = solutions;
	}

	public List<Solution> getSolutions() {
		return solutions;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
