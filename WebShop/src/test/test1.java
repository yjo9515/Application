package test;

public class test1 {
	

	public class UserBeans {
		private String userID;
		private String userPassword;
		private String userName;
		private String userEmail;
		
		public UserBeans(){
			
		}
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public String getUserPassword() {
			return userPassword;
		}
		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserEmail() {
			return userEmail;
		}
		public void setUserEmail(String userEmail) {
			this.userEmail = userEmail;
		}
		
		
	}
	public boolean join(String userID, String userPassword,String userName, String userEmail  ) {
		if(userID == null || userID == "") {
			System.out.println("아이디를 입력하세요");
		}else if(userPassword == null || userPassword == "") {
			System.out.println("비밀번호를 입력하세요");
			
		}else if (userName == null || userName == "") {
			System.out.println("사용자 이름을 입력하세요");
		}
		else if(userEmail == null || userEmail == "") {
			System.out.println("이메일을 입력하세요");
		}else System.out.println("환영합니다 "+userName+"님");
		return true;
	}

}
