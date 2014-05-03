
name := "we-lab3-group52"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  cache,
  "com.google.code.gson" % "gson" % "2.2"
)     

templatesImport += "scala.collection._"
templatesImport += "at.ac.tuwien.big.we14.lab2.api._"

play.Project.playJavaSettings
