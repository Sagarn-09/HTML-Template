# HTML-Template

The 535-5.7.8 Username and Password not accepted error is Google's SMTP server explicitly rejecting the password you provided in your code.

Because Google completely disabled "Less Secure Apps" access, you absolutely cannot use your normal Gmail login password here. You must use a generated 16-character App Password.

Here is exactly how to fix the credentials in your Java code:

Verify 2-Step Verification is active: Ensure 2-Step Verification is fully enabled on sagar.n@gmail.com.

Generate the App Password: Click this direct link: https://myaccount.google.com/apppasswords. Type a name like "Java App" and click Create.

Remove the Spaces: Google will display a 16-letter password with spaces like this: abcd efgh ijkl mnop. You must remove the spaces before pasting it into your code. It should look like abcdefghijklmnop.

Update your Controller: Replace the password line in your StartController.java with the spaceless 16-character code.


		<dependency>
			<groupId>com.sun.mail</groupId>
			<artifactId>javax.mail</artifactId>
			<version>1.6.2</version>
		</dependency>

		<!-- Also ensure you have the Spring context support for mail -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context-support</artifactId>
			<version>5.3.29</version> <!-- Match this to your current Spring
			version -->
		</dependency>

