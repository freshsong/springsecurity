package net.songecom.upload.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import net.songecom.upload.model.ContentsDto;
import net.songecom.upload.model.UploadContentsDto;
import net.songecom.upload.model.UploadDto;

@Mapper
public interface UploadMapper {
	/* mybatis에 만든 sql 구문에서 값 가져옴 */	
	
	void insertData(ContentsDto contentsDto);
	
	void insertupload(UploadDto uploadDto);
	
	List<UploadContentsDto> getUpload(); 
	
	List<ContentsDto> listContents();
	
	List<UploadDto> listUploadByContents(int contents_id);
}
