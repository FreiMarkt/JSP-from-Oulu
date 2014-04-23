package timebank.db;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.sql.DataSource;
import javax.naming.InitialContext;

public class DBUtil {
	/**
	 * database connection pool
	 */
	private Vector<Connection> pool;	
	
	/**
	 * the size of pool
	 */
	private int poolSize = 10;	
	
	/**
	 * the instance of the database connection tool
	 */
	private static DBUtil instance = null;
	
	/**
	 * private method of construction,forbid to create object outside,if you want to get the object of this class,via<code>getIstance</code>
	 * 
	 */
	private DBUtil() {
		init();
	}
	
	/**
	 * initial of connetion pool
	 */
	private void init() {
		pool = new Vector<Connection>(poolSize);
		addConnection();
	}
	
	/**
	 * create the initial connection of database in connection pool
	 */
	private void addConnection(){
		DataSource ds=null;
		Connection conn = null;
		try{
			Context initCtx=new InitialContext();
			ds=(DataSource)initCtx.lookup("java:comp/env/jdbc/yjs");
			if(ds!=null){
				for(int i=0;i<this.poolSize;i++){
					conn=ds.getConnection();
					this.pool.add(conn);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * return to the connection pool
	 */
	public synchronized void release(Connection conn) {
		pool.add(conn);
	}

	/**
	 * close all the database connection in the pool
	 */
	public synchronized void closePool() {
		for (int i = 0; i < pool.size(); i++) {
			try {
				((Connection) pool.get(i)).close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			pool.remove(i);
		}
	}

	/**
	 * return one object in current connection pool
	 */
	public static DBUtil getInstance() {
		if (instance == null) {
			instance = new DBUtil();
		}
		return instance;
	}

	/**
	 * return a database connection in current connection pool
	 */
	public synchronized Connection getConnection() { 
		if (pool.size() > 0) {
			Connection conn = pool.get(0);
			pool.remove(conn);
			return conn;
		} else {
			return null;
		}
	}
}
