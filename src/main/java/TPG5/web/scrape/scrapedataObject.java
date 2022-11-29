package TPG5.web.scrape;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.jsoup.select.Elements;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import TPG5.web.dbConnect;
import TPG5.web.model.Mscrape;

public class scrapedataObject {
	dbConnect conn = new dbConnect("tpg5");
	Connection connection = conn.str_connection();
	Statement stmt = null;
	ResultSet rs = null;

	public void get_web_data() throws IOException {
		String url = "https://horizon.netscout.com/?atlas=summary";
		final Document doc = Jsoup.connect(url).get();
		ArrayList<String> listdt = new ArrayList<>();
		ArrayList<String> arr_hack_info = new ArrayList<>();

		String[][] attacks = new String[5][8];

		Elements Month = doc.select("div.summary-air-ui--app-air--section, div");
		String monthinfo = Month.select("h2").text();
		String[] my = monthinfo.split(" ", 2);
		ArrayList<String> dy = new ArrayList<>();
		String dy_data = dy.get(0) + " " + dy.get(1);
		Scanner date_year = new Scanner(monthinfo);
		date_year.useDelimiter(" ");
		
		try {
			int y = 0;
			for (Element el_label : doc.select("div.summary-air-ui--app-air--section, div div div")){
				String dt = el_label.select("span").text();
				listdt.add(dt);
			}
			Scanner scanner_src_dt = new Scanner(listdt.get(02).toString());
			Scanner scanner_target_dt = new Scanner(listdt.get(10).toString());
			scanner_src_dt.useDelimiter(" ");
			while(scanner_src_dt.hasNext()) {
				arr_hack_info.add(scanner_src_dt.next().toString());
			}
			attacks[0][0] = arr_hack_info.get(5).toString() + " " + arr_hack_info.get(6).toString();
			attacks[0][1] = arr_hack_info.get(7).toString();
			attacks[0][2] = arr_hack_info.get(8).toString();
			attacks[0][3] = arr_hack_info.get(36).toString() + " " + arr_hack_info.get(37).toString();
			attacks[0][4] = arr_hack_info.get(38).toString();
			attacks[0][5] = arr_hack_info.get(39).toString();
			attacks[0][6] = dy_data;
			
			attacks[1][0] = arr_hack_info.get(11).toString() + " " + arr_hack_info.get(12).toString();
			attacks[1][1] = arr_hack_info.get(13).toString();
			attacks[1][2] = arr_hack_info.get(14).toString();
			attacks[1][3] = arr_hack_info.get(42).toString();
			attacks[1][4] = arr_hack_info.get(42).toString();
			attacks[1][5] = arr_hack_info.get(44).toString();
			attacks[1][6] = dy_data;
			
			attacks[2][0] = arr_hack_info.get(17).toString();
			attacks[2][1] = arr_hack_info.get(18).toString();
			attacks[2][2] = arr_hack_info.get(19).toString();
			attacks[2][3] = arr_hack_info.get(47).toString() + " " + arr_hack_info.get(48).toString();
			attacks[2][4] = arr_hack_info.get(49).toString();
			attacks[2][5] = arr_hack_info.get(50).toString();
			attacks[2][6] = dy_data;
			
			attacks[3][0] = arr_hack_info.get(22).toString();
			attacks[3][1] = arr_hack_info.get(23).toString();
			attacks[3][2] = arr_hack_info.get(24).toString();
			attacks[3][3] = arr_hack_info.get(53).toString() + " " + arr_hack_info.get(54).toString();
			attacks[3][4] = arr_hack_info.get(55).toString();
			attacks[3][5] = arr_hack_info.get(56).toString();
			attacks[3][6] = dy_data;
			
			attacks[4][0] = arr_hack_info.get(27).toString();
			attacks[4][1] = arr_hack_info.get(28).toString();
			attacks[4][2] = arr_hack_info.get(29).toString();
			attacks[4][3] = arr_hack_info.get(59).toString();
			attacks[4][4] = arr_hack_info.get(60).toString();
			attacks[4][5] = arr_hack_info.get(61).toString();
			attacks[4][6] = dy_data;
			
			String web_scrape_dt = "SELECT * FROM cyber_attacks WHERE month_year = 'dy_data'";
			
			try {
				stmt = connection.createStatement();
				rs = stmt.executeQuery(web_scrape_dt);
				if(rs.next()==false) {
					String insert_data = "INSERT INTO cyber_attacks (src_country, src_num_of_attack, src_percentage, des_country, des_num_of_attack, des_percentage";
					PreparedStatement pstmt = connection.prepareStatement(insert_data);
					for(int k=0; k<5; k++) {
						pstmt.setString(1, attacks[k][0]);
						pstmt.setString(2, attacks[k][1]);
						pstmt.setString(3, attacks[k][2]);
						pstmt.setString(4, attacks[k][3]);
						pstmt.setString(5, attacks[k][4]);
						pstmt.setString(6, attacks[k][5]);
						pstmt.setString(7, attacks[k][6]);
						pstmt.execute();
					}
				}
				else {
					while(rs.next()) {
						if(!dy_data.equals(rs.getString("month_year")) && rs.next()==true) {
							String insert_data = "INSERT INTO cyber_attacks (src_country, src_num_of_attack, src_percentage, des_country, des_num_of_attack, des_percentage";
							for(int k=0; k<5; k++) {
								PreparedStatement pstmt = connection.prepareStatement(insert_data);
								pstmt.setString(1, attacks[k][0]);
								pstmt.setString(2, attacks[k][1]);
								pstmt.setString(3, attacks[k][2]);
								pstmt.setString(4, attacks[k][3]);
								pstmt.setString(5, attacks[k][4]);
								pstmt.setString(6, attacks[k][5]);
								pstmt.setString(7, attacks[k][6]);
								pstmt.execute();
						}
					}
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	catch (Exception e) {
		System.out.println(e);
		}
		
	}
	public ArrayList<Mscrape> getcyber_attack() {
		ArrayList<Mscrape> ddosList = new ArrayList<Mscrape>();
		String selectSQL = "SELECT * FROM cyber_attacks";
		try {
			stmt = connection.createStatement();
			rs = stmt.executeQuery(selectSQL);
			while(rs.next()) {
				
			}
			connection.close();
		}
		catch (Exception e) {
			System.out.println("No Records");
		}
		return ddosList;
	}
	public void ddod_archive(ArrayList<Mscrape> ddosList) {
		String qry_webdt = "SELECT * FROM cyber_archive";
		try {
			stmt = connection.createStatement();
			rs = stmt.executeQuery(qry_webdt);
			while(rs.next()) {
				String m_y = rs.getString("month_year").toString();
				
			}
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("Error");
		}
		for(int i=0; i<ddosList.size(); i++) {
			Mscrape element = ddosList.get(i);
			element.getSrcCountry();
			element.getSrcNoOfAttacks();
			element.getSrc_percent();
			element.getDesCountry();
			element.getDesNoOfAttacks();
			element.getDes_percent();
			element.getNyear();
		}
	}
}