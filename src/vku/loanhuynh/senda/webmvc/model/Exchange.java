package vku.loanhuynh.senda.webmvc.model;

public class Exchange {
	private String id;
	private String name;
	private String email;
	private String title;
	private String content;
	private String image_link;
	private String created;
	
	public Exchange() {
		super();
	}
	public Exchange(String id, String name, String email, String title, 
			String content, String image_link, String created) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.title = title;
		this.content = content;
		this.image_link = image_link;
		this.created = created;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage_link() {
		return image_link;
	}
	public void setImage_link(String image_link) {
		this.image_link = image_link;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Exchange [id= "+ id +", name=" + name +", email=" + email +", title=" 
				+ title +", content= " + content +", image_link=" + image_link +", created= "+ created +"]";
	}
	

}
