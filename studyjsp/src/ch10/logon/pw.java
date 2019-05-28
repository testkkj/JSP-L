package ch10.logon;

import work.crypt.SHA256;

public class pw {
	private static pw instance = new pw();
	
	public static pw getInstance() {
		return instance;
	}
	
	private pw() {}
	
	public String pwCheck(String passwd) {
		SHA256 sha = SHA256.getInsatnce();
		
		String orgPass = passwd;
		try {
			String shaPass = sha.getSha256(orgPass.getBytes());
			return shaPass;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return orgPass;
	}
}
