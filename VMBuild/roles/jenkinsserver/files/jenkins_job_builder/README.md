# Jenkins Job Builder

Ref - https://docs.openstack.org/infra/jenkins-job-builder/

yum -y install python-pip
pip install --user jenkins-job-builder

Create the file ~/.config/jenkins_jobs/jenkins_jobs.ini
*  Make sure you include the right URL, so if you're using port 8080 you'll need to add :8080, e.g. http://10.0.2.15:8080

