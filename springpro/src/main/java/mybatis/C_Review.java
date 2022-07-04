package mybatis;

public class C_Review {

  private int rv_num;
  private String id;
  private String rv_desc;
  private int c_num;
  private String c_name;

  public int getRv_num() {
    return rv_num;
  }

  public void setRv_num(int rv_num) {
    this.rv_num = rv_num;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getRv_desc() {
    return rv_desc;
  }

  public void setRv_desc(String rv_desc) {
    this.rv_desc = rv_desc;
  }

  public int getC_num() {
    return c_num;
  }

  public void setC_num(int c_num) {
    this.c_num = c_num;
  }

  public String getC_name() {
    return c_name;
  }

  public void setC_name(String c_name) {
    this.c_name = c_name;
  }

@Override
public String toString() {
	return "C_Review [rv_num=" + rv_num + ", id=" + id + ", rv_desc=" + rv_desc + ", c_num=" + c_num + ", c_name="
			+ c_name + "]";
}


}
