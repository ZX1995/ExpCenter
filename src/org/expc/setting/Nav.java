package org.expc.setting;

public class Nav {
	public String name;
	public String file;
	public Nav() {
		// TODO Auto-generated constructor stub
	}
	public Nav(String name, String file)
	{
		this.name= name;
		this.file= file;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
}
