package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

public class AddrManger {
	
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	/*
	 * public void remove(String username) { addrlist.remove(username); }
	 */
	
	//리스트 전달
	public List<AddrBean> getAddrlist() {
		return addrlist;	
	}
	
	public AddrBean getAddr(String username) {
		for (AddrBean ab : addrlist) {
			if(ab.getUsername().equals(username)) {
				return ab;
			}
		}
		return null;
	}

}
