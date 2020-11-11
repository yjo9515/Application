package test;

public class test2 {
	public class adminBeans {
		private String adminID;
		private String adminPassword;
		public String getAdminID() {
			return adminID;
		}
		public void setAdminID(String adminID) {
			this.adminID = adminID;
		}
		public String getAdminPassword() {
			return adminPassword;
		}
		public void setAdminPassword(String adminPassword) {
			this.adminPassword = adminPassword;
		}
		
	}


public boolean login(String adminID, String adminPassword  ) {
	if(adminID == null || adminID == "") {
		System.out.println("관리자 아이디를 입력하세요");
	}else if(adminPassword == null || adminPassword == "") {
		System.out.println("관리자 비밀번호를 입력하세요");
		
	}else if(adminID == "yjo9515" && adminPassword == "1234") {
		System.out.println("관리자님 환영합니다");
	}
	return true;
}
}

