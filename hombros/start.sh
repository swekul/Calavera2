docker build . -t hombros

docker run -p 8080:8080 --env JAVA_OPTS="-Dhudson.Main.development=true -Djenkins.install.runSetupWizard=false"  hombros

