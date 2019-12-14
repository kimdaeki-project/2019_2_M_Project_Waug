package com.wg.p1.util;

import java.io.File;
import java.util.Calendar;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {

	public String save(String realPath, MultipartFile multipartFile) throws Exception {
		
		File file=new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String expendar=multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		
		Calendar ca=Calendar.getInstance();
		Long name=ca.getTimeInMillis();
		
		String fileName=String.valueOf(name)+expendar;
		file=new File(realPath, fileName);
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		System.out.println("file copied : "+realPath+" : "+fileName);
		return fileName;
	}
}
