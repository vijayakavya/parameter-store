pipeline {
   agent { label 'workstation'}

   options {
       ansiColor('xterm')
     }


   stages {

     stage{'Terraform Plan') {
       steps {
         sh 'make'
       }
     }
   }
}