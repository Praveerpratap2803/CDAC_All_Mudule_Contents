package pkg1;

public class ArrayOperation {
	private int idx=0;
	private int arr[]= new int[10];
	public void showArray(){
		for(int i=0;i<arr.length && i<idx;i++) {
			
			System.out.println(arr[i]);
		}
	}
	public void addElement(int e) {
		if(idx<arr.length) {
			arr[idx]=e;
			System.out.println("Element added");
		}else {
			System.out.println("Array size is full");
		}
		idx++;
	}
	public void searchElement(int e) {
		boolean flag=true;
		for(int i=0;i<arr.length;i++) {
			if(arr[i]==e) {
				System.out.println("Element found ");
				flag = false;
				break;
			}
		}
		if(flag) {
			System.out.println("Element not found");
		}
	}
	public int[] doubleArray() {
		for (int i=0;i<idx;i++) {
			arr[i]*=2;
		}
		return arr;
	}
	public int[] sortArray() {
		for(int i=1;i<arr.length && i<idx;i++) {
			int a = arr[i];
			int j=i-1;
			while(j>=0 && arr[j]>a  ) {
				arr[j+1]=arr[j];
				j=j-1;
			}
			System.out.println(a);
			arr[j+1]=a;
		}
		return arr;
	}
	
}
