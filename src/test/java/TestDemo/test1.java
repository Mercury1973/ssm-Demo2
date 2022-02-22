package TestDemo;

import org.junit.Test;

import java.util.Scanner;

/**
 * PackageName:TestDemo
 * ClassName:test1
 * Description:
 *
 * @author Mercury
 * @Date 2022/2/21 13:16
 */

public class test1 {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        int n=in.nextInt();
        int m=in.nextInt();
        int[] arr1=new int[n];
        int[] arr2=new int[m];
        for (int i = 0; i < n; i++) {
            arr1[i]=in.nextInt();
        }
        for (int i = 1; i < m; i++) {
            arr2[i]=i;
        }
        int count=0,sum=0;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < arr1[i]; j++) {
                sum+=count;
            }
            count++;
        }
        System.out.println(sum);
    }
}
