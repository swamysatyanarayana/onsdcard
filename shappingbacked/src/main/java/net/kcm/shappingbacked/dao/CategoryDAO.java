package net.kcm.shappingbacked.dao;

import java.util.List;

import net.kcm.shappingbacked.dto.Category;

public interface CategoryDAO {

	public List<Category> list();

	public Category get(int id);
}
