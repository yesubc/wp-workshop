WordPress Workshop
===================
    
#### Configure WordPress:
1. Pull in your local "git clone git@github.com:yesubc/wp-workshop.git"
2. Import database from "Data" folder
3. Access to Admin "http://localhost/wp-workshop/wp-admin"
4. Admin authentication
    Username: admin
    Password: 111111
5. Enjoy :-)

#### Install Gulp:
    $ npm install --save-dev gulp
        
#### Install server-side dependencies
    $ npm install
    
#### Run Gulp Tasks:
    $ gulp
    $ gulp watch

#### Reference:
    https://github.com/yesubc/gulpjs-bower
    
##### Note: 
1. Change http://localhost/wp-workshop/ to your database table of mytheme_options.
2. Gulp and NPM install in your theme location i.e. wp-content\themes\mytheme.
3. You need to install 'nodejs', 'npm' if you don't have them already.
4. Less automation; Go to "gulpfile.js" and enable to "Less" and disable to "SASS".