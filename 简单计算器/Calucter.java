package servlets;

public class Calucter {
    float num1;
    float num2;
    String suan;
    float sum;

    public float getNum1() {
        return num1;
    }

    public void setNum1(float num1) {
        this.num1 = num1;
    }

    public float getNum2() {
        return num2;
    }

    public void setNum2(float num2) {
        this.num2 = num2;
    }

    public String getSuan() {
        return suan;
    }

    public void setSuan(String suan) {
        this.suan = suan;
    }

    public float getSum() {
        switch (suan){
            case "jia" :
                sum = num1+num2;break;
            case "jian":
                sum = num1-num2;break;
            case "cheng":
                sum = num1*num2;break;
            case "chu":
                sum = num1*num2;break;
            default:
                break;
        }
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
}
