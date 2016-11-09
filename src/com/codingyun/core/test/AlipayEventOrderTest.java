package com.codingyun.core.test;

import java.io.FileInputStream;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.codingyun.core.dao.GeneralDao;
import com.codingyun.core.entity.bo.AlipayEventUser;
import com.codingyun.core.exception.DaoException;
import com.codingyun.core.util.StringUtil;

/**
 * 将支付宝账单导入到捐款活动表中
 * @author 王勇
 * 2015年5月15日
 */
@ContextConfiguration(locations = {"classpath*:/META-INF/jdbc-context.xml","classpath*:/META-INF/springMvc3-servlet.xml"})  
public class AlipayEventOrderTest  extends AbstractJUnit4SpringContextTests{
	
	@Autowired
	private GeneralDao generalDao;

	@Test
	public void test() {
		try{
			FileInputStream fis = new FileInputStream("D:\\alipay.xls");
			Workbook workBook = null;
			workBook = new HSSFWorkbook(fis);
			Sheet sheet = workBook.getSheetAt(0);// 得到 工作薄 的第 1个表
			Row row;
			for(int i = sheet.getFirstRowNum() + 1; i < sheet.getPhysicalNumberOfRows(); i++){
				row = sheet.getRow(i);// 循环行数
				if(row.getCell(3) != null && StringUtil.isNotBlank(row.getCell(3).getStringCellValue()) && "账户码-转账".equals(row.getCell(3).getStringCellValue().trim())){
					AlipayEventUser alipayEvent = new AlipayEventUser();
					alipayEvent.setAliOrder(row.getCell(0).getStringCellValue().trim());
					alipayEvent.setAliOrderBussies(row.getCell(1).getStringCellValue().trim());
					alipayEvent.setCheckStatus(0);
					alipayEvent.setEventMoney(String.valueOf(row.getCell(6).getNumericCellValue()));  //转账金额
					String namePhone = row.getCell(5).getStringCellValue().trim();
					alipayEvent.setUserName(namePhone.substring(0, namePhone.indexOf("(")).trim());
					alipayEvent.setUserPhoneOrEmail(namePhone.substring(namePhone.indexOf("(") + 1, namePhone.indexOf(")")));
					alipayEvent.setCreateTime(row.getCell(4).getDateCellValue());
					try{
						generalDao.saveEntityReturnKey(alipayEvent);
					}catch(DaoException e1){
						System.out.println("对不起，主键重复了！");
					}catch(DuplicateKeyException e2){
						System.out.println("唯一键重复了！");
					}
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
