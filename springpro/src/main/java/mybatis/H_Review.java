package mybatis;

public class H_Review {

  private int rv_num;
  private String id;
  private String rv_desc;
  private int h_num;
  private String h_name;

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

  public int getH_num() {
    return h_num;
  }

  public void setH_num(int h_num) {
    this.h_num = h_num;
  }

  public String getH_name() {
    return h_name;
  }

  public void setH_name(String h_name) {
    this.h_name = h_name;
  }

  @Override
  public String toString() {
    return "H_Review [rv_num=" + rv_num + ", id=" + id + ", rv_desc=" + rv_desc + ", h_num=" + h_num
        + ", h_name=" + h_name + "]";
  }



}
