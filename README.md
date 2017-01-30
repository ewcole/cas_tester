This project is a small, no-frills, web application that implements the
[Saml11TicketValidationFilter Example](https://wiki.jasig.org/display/CASC/Saml11TicketValidationFilter+Example) from the JASIG wiki.  The main motivation is that I need to make sure my CAS server is compatible with Ellucian's Banner single sign-on system.

To use this, edit the [build.gradle](build.gradle) file to enter the name of your  CAS server and local computer name, then run the application.  In Windows, you can navigate to the directory and execute [run.cmd](run.cmd).  In POSIX systems, you can use `gradlew jettyRun`.
