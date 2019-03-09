package edu.abcp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.abcp.domain.Upload;





@Repository
public interface UploadRepository extends JpaRepository<Upload,Long>{
	/*@Query(value = "select name from Upload b where b.subCategory_id = :id order by createDate desc")
	
	List<Upload> findBysubcategory(@Param("id") long id);*/
	
	 @Query("select u from Upload u join u.subCategory a where (a.id = :id) order by u.createDate desc")
    List<Upload> findBysub(@Param("id") long id);
	 
 
	 @Query(value="select *  from upload where subCategory_id=? order by product_id desc", nativeQuery=true)
	 List<Upload> findLast6UploadById(long subCategory_id);
	 
	 @Query(value="select *  from upload where subCategory_id = ? order by product_id desc", nativeQuery=true)
	 List<Upload> findLast4UploadBikeById(long subCategory_id);
	 
	 @Query(value="select *  from upload where subCategory_id=? order by product_id asc", nativeQuery=true)
     List<Upload> findNext4UploadBikeById(long id);
	 
	 
	 @Query(value="select *  from upload where subCategory_id=? order by product_id asc", nativeQuery=true)
	 List<Upload> findNext4UploadByID(long id);
	 

	 
	 
	 
	 
	 
	 List<Upload> findByproduct_id(Long product_id);

	 List<Upload> findById(Long id);
	


	List<Upload> findBysubCategory_id(long id);



	

	
}
