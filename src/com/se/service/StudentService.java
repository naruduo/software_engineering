package com.se.service;

import java.io.*;
import java.util.*;

import org.apache.commons.io.IOExceptionWithCause;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import com.se.dao.StudentDao;
import com.se.pojo.Student;
import com.se.util.Page;

import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class StudentService {

	private StudentDao dao = new StudentDao();

	public Student get(int id) {
		return dao.get(Student.class, id);
	}

	public boolean login(int id, String password) {
		Student stu = dao.get(Student.class, id);
		System.out.println(stu);
		if (stu != null && stu.getPassword().equals(password))
			return true;
		return false;
	}

	public void update(Student stu) {
		dao.update(stu);
	}

	public void add(Student stu) {
		dao.add(stu);
	}

	public List<Student> list(Page page) {
		return dao.list(Student.class, (page.getStart()) * page.getCount(), page.getCount());
	}

	public void delete(int id) {
		dao.delete(Student.class, id);
	}

	public boolean loadRoster(String inputFilePath, int teacherId) {
		Student stu = null;
		try {
			Workbook workbook = null;
			Sheet sheet = null;
			Row row = null;
			String suffix = inputFilePath.substring(inputFilePath.lastIndexOf('.'));
			FileInputStream fis = new FileInputStream(inputFilePath);
			String name;
			int id;
			if (".xls".equals(suffix)) {
				workbook = new HSSFWorkbook(fis);
			} else if (".xlsx".equals(suffix)) {
				workbook = new XSSFWorkbook(fis);
			} else
				return false;
			sheet = workbook.getSheetAt(0);
			int rows = sheet.getPhysicalNumberOfRows();
			for (int i = 1; i < rows; ++i) {
				row = sheet.getRow(i);
				if (row.getCell(0) == null)
					break;
				stu = new Student();
				System.out.println(row.getCell(1));
				name = row.getCell(1).getStringCellValue();
				id = (int) row.getCell(0).getNumericCellValue();
				stu.setName(name);
				stu.setId(id);
				stu.setPassword(String.format("%8d", id));
				stu.setTeacherId(teacherId);
				stu.setAvatar("default.jpg");
				dao.add(stu);
			}
			workbook.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return true;
	}

	public boolean getRoster(String filePath, int teacherId) {
		List<Student> list = dao.getTeachersStudent(teacherId);

		try {
			Workbook wb = new XSSFWorkbook();
			Sheet sheet = wb.createSheet("花名册");
			Row row = sheet.createRow(0);
			Cell idCell = row.createCell(0);
			Cell nameCell = row.createCell(1);
			idCell.setCellValue("学号");
			nameCell.setCellValue("姓名");
			int count = 1;
			for (Student stu : list) {
				row = sheet.createRow(count++);
				idCell = row.createCell(0);
				nameCell = row.createCell(1);
				idCell.setCellValue(String.format("%08d", stu.getId()));
				nameCell.setCellValue(stu.getName());
			}
			File destFile = new File(filePath);
			if (!destFile.exists())
				destFile.createNewFile();
			wb.write(new FileOutputStream(destFile));
			wb.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("DONE");
		return true;
	}

	public boolean changePassword(int id, String password) {
		Student stu = dao.get(id);
		stu.setPassword(password);
		dao.update(stu);
		return true;
	}

	public List<Student> getTeachersStudents(int teacherId) {
		return dao.getTeachersStudent(teacherId);
	}

	public List<Student> getTeachersStudents(int teacherId, String nameKey) {
		return dao.getTeachersStudent(teacherId, nameKey);
	}

	// 5-20
	public boolean changeAvatar(int stuId, String avatar) {
		Student stu = dao.get(stuId);
		stu.setAvatar(avatar);
		dao.update(stu);
		return true;
	}
}
