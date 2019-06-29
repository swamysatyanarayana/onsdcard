package net.kcm.shappingbacked.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kcm.shappingbacked.dao.CategoryDAO;
import net.kcm.shappingbacked.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<Category>();
	static {
		Category category = null;
		
		//adding first category
		category = new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("This is som desc for televisiton");
		category.setImageUrl("CAT_1.png");
		categories.add(category);
		
		//adding second category
		category = new Category();
		category.setId(1);
		category.setName("Mobile");
		category.setDescription("This is som desc for mobile");
		category.setImageUrl("CAT_2.png");
		categories.add(category);
		
		//adding thried category
		category = new Category();
		category.setId(1);
		category.setName("Laptop");
		category.setDescription("This is som desc for laptop");
		category.setImageUrl("CAT_3.png");
		categories.add(category);
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

}
