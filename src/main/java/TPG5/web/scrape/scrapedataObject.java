package TPG5.web.scrape;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import org.jsoup.select.Elements;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import TPG5.web.dbConnect;

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

		String[][] attack = new String[5][0];

		Elements Month = doc.select("div.summary-air-ui--app-air--section, div");
		String monthinfo = Month.select("h2").text();
		String[] my = monthinfo.split(" ", 2);
		ArrayList<String> dy = new ArrayList<>();
		Scanner date_year = new Scanner(monthinfo);
		date_year.useDelimiter("");
		
	}

}