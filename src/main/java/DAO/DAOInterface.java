package DAO;

import java.util.ArrayList;
import java.util.List;

public interface DAOInterface<T> {
    public T selectbyId(String id);

    public List selectAll();

    public int insert(T obj);

    public int insertAll(ArrayList<T> list);

    public int update(T obj);

    public int updateAll(ArrayList<T> list);

    public int insertOrUpdate(T obj);

    public int insertOrUpdateAll(ArrayList<T> list);

    public int delete(T obj);

    public int deleteAll(ArrayList<T> list);
}