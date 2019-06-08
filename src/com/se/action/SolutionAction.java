package com.se.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.se.pojo.Puzzle;
import com.se.pojo.Solution;
import com.se.service.SolutionService;
import com.se.util.JSONUtils;
import com.se.util.Page;
import com.se.util.SessionUtils;

public class SolutionAction extends ActionSupport {
	private Integer solutionId;
	private Integer puzzleId;
	private String content;
	private Integer soluerId;
	private Puzzle puzzle;
	private Solution solution;
	private List<Solution> solutions;
	private List<String> soluersName;
	private Page page = new Page(0, 5);
	private String result;
	private SolutionService solutionService = new SolutionService();
	
	public String listPuzzles() {
		autowire();
		solutions = solutionService.listPuzzlesSolution(solution, page);
		soluersName = solutionService.getSoluerName(solutions);
		return "listPuzzlesSolution";
	}
	
	//保存回答
	public String save() {
		autowire();
		if(content == null||"".equals(content))
			result = "回答内容不能为空哦-.-";
		if(solutionService.save(solution))
			result = "success";
		else 
			result = "抱歉，服务器开了点小差";
		return "getDetailPuzzle";
	}
	
	/*//编辑回答
	public String edit() {
		if(!solutionService.edit(autowire()))
			return ERROR;
		return "chain";
	}*/
	
	//点赞
	public void like() {
		Integer likeFreq = solutionService.like(solutionId);
		if(likeFreq != -1)
			JSONUtils.printString("likeFreq", likeFreq);
	}
	
	//删除回答
	public String delete() {
		autowire();
		solutionService.delete(solution);
		return "getDetailPuzzle";
	}
	
	private void autowire() {
		solution = new Solution();
		if(solutionId != null)
			solution.setSolutionId(solutionId);
		if(puzzle == null) {
			puzzle = new Puzzle();
			puzzle.setPuzzleId(puzzleId);
		}
		solution.setPuzzleId(puzzle);
		solution.setContent(content);
		solution.setSoluerId(SessionUtils.getUserId());
	}
	
	public Integer getSolutionId() {
		return solutionId;
	}
	
	public void setSolutionId(Integer solutionId) {
		this.solutionId = solutionId;
	}
	
	public Integer getPuzzleId() {
		return puzzleId;
	}
	
	public void setPuzzleId(Integer puzzleId) {
		this.puzzleId = puzzleId;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getSoluerId() {
		return soluerId;
	}
	
	public void setSoluerId(Integer soluerId) {
		this.soluerId = soluerId;
	}

	public Puzzle getPuzzle() {
		return puzzle;
	}

	public void setPuzzle(Puzzle puzzle) {
		this.puzzle = puzzle;
	}

	public Solution getSolution() {
		return solution;
	}

	public void setSolution(Solution solution) {
		this.solution = solution;
	}

	public List<Solution> getSolutions() {
		return solutions;
	}

	public void setSolutions(List<Solution> solutions) {
		this.solutions = solutions;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<String> getSoluersName() {
		return soluersName;
	}

	public void setSoluersName(List<String> soluersName) {
		this.soluersName = soluersName;
	}
	
}
