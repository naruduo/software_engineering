package com.se.service;

import com.se.dao.CommonFileDao;
import com.se.pojo.CommonFile;
import com.se.util.Page;

import java.util.*;

public class CommonFileService {
	private CommonFileDao cfd = new CommonFileDao();

	public void add(CommonFile commonFile) {
		cfd.add(commonFile);
	}

	public void addDownloadTimes(int commonFileId) {
		CommonFile cf = cfd.get(CommonFile.class, commonFileId);
		cf.setDownloadTimes(cf.getDownloadTimes() + 1);
		cfd.update(cf);
	}

	public CommonFile get(int commonFileId) {
		return cfd.get(CommonFile.class, commonFileId);
	}

	public List<CommonFile> getTypeList(int fileType, Page page) {
		return cfd.getType(fileType, page.getStart(), page.getCount());
	}

	public void delete(int fileId) {
		cfd.delete(CommonFile.class, fileId);
	}

	public Long total() {
		return cfd.getTotal(CommonFile.class);
	}

	public Long total(int fileType) {
		return cfd.getTypeTotal(fileType);
	}
}
