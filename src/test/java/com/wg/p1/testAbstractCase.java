package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*-context.xml")
public class testAbstractCase {
	
	@Inject
	private SqlSession sqlsession;
	@Inject
	private DataSource dataSource;
	
	@Test
	public void test() {
		assertNotNull(dataSource);
	}

}
