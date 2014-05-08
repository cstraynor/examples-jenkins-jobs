Appurify Jenkins Job Examples
=============================

This is an example of how to setup testing job in Jenkins for Appurify AMP.

Requirement
===========

In the Jenkins server, you need to have the following software per installed:
1. python ( https://www.python.org/ )
2. virtualenv ( https://virtualenv.pypa.io/en/latest/ )

Information which you need
==========================
1. Appurify key
1.1 you can get it from the Appurify admin interface. Go to API -> Developers ( http://screencast.com/t/eBWLOJYS )
2. Appurify secret
2.1 you can get it from the Appurify admin interface. Go to API -> Developers ( http://screencast.com/t/eBWLOJYS )
3. You need your testing iOS application file (IPA file)
4. You need your testing script (Test file)
5. You device type. Go to Devices -> Devices. Find your device and write down the device type. ( http://screencast.com/t/joHrceiKmlF )

Setup Jenkins
=============
1. Create a Jenkins jobs
1.1 select "New Item" ( http://screencast.com/t/Bm6iJTM3k )
1.2 put a name in your job
1.3 select a free style project
2. Setup the Jenkins jobs
2.1 type in name, description and github project as ( http://screencast.com/t/OW2pHyFlW )
2.2 Setup up the build parameter ( http://screencast.com/t/b2RP25Ab )
2.2.1 APPURIFY_API_PROTO as string and default to "https"
2.2.2 APPURIFY_API_HOST as string and default to your Appurify server. For example "prodstage.appurify.com" or "appurify.my_company.com"
2.2.3 API_KEY as string and default to your API key ( http://screencast.com/t/4pl4W47HuRn )
2.2.4 API_SECRET as string and default to your API secret key ( http://screencast.com/t/4pl4W47HuRn )
2.2.5 DEVICE_TYPE_ID as string and default to your default device type ( http://screencast.com/t/G0JqSWVZrN )
2.2.6 TEST_TYPE as string and default to your test type as "uiautomation" ( http://screencast.com/t/G0JqSWVZrN )
2.2.7 TEST_APP as string and default to the location of your app in the github repository ( http://screencast.com/t/kLzIJgcAPRSE )
2.2.8 TETS_SCRIPT as string and default to the location of your testing script in the github repository ( http://screencast.com/t/kLzIJgcAPRSE )
2.2.9 CONFIG_FILE as string and default to the test configuration file in the github repositotry ( http://screencast.com/t/3vDhTeg7 )
2.3 Source code controller
2.3.1 you SHOULD fork this repository ( https://github.com/appurify/examples-jenkins-jobs.git/ )  and create your own repository
2.3.2 point to your repository as: http://screencast.com/t/kSYuYMedr
2.4 set up the build -> execute shell as ( http://screencast.com/t/BDYIovVUI9 )
2.4.1 the command line is: /bin/sh ./runtest.sh $API_KEY $API_SECRET $DEVICE_TYPE_ID $TEST_TYPE $TEST_APP $TEST_SCRIPT $CONFIG_FILE
3. save it
4. done

When you are ready, you can click on "Build with parameters" ( http://screencast.com/t/abdhpF6n2U3 ) and it will start the build with the configuration.

Help
====
If you have any question, please contact us at: http://appurify.com/

