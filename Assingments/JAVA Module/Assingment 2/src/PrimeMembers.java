
public class PrimeMembers extends Member {

	 int JoiningYear;
	 Float JoiningFees;
	 boolean isActive;
	 
	 // Setter
	 public void setJoiningYear(int joiningYear) {
		 JoiningYear = joiningYear;
	 }
	 public void setJoiningFees(Float joiningFees) {
		 JoiningFees = joiningFees;
	 }
	 
	 public void setActive(boolean isActive) {
		 this.isActive = isActive;
	 }
	 
	 
	 // Getter
	 public int getJoiningYear() {
		 return JoiningYear;
	 }
	 
	 public Float getJoiningFees() {
		 return JoiningFees;
	 }
	 public boolean getisActive() {
		 return isActive;
	 }
	
}
