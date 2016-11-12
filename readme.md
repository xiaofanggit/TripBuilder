## About the project

A RESTFUL OAUTH2 API project using Laravel 5.3 passport to help clients building their trips.

Function1: Alphabetical listing the real airports in the world.
-URL: http://tripbuilder.dev/api/v1/airports  (GET) 

Function2: List of flights for a trip (the trip table testing data was created by the file: \TripBuilder\database\seeds\DatabaseSeeder.php
-URL: http://tripbuilder.dev\api\v1\lights?id={trip_id} (GET)

Function3: Adding flights to a trip
-URL: http://tripbuilder.dev\api\v1\flights (POST) 
@param int $trip_id: id of a trip
@param int $start_airport: id of a source airport
@param ing $end_airport: id of a destination airport

Function4: Removing flights from a trip
-URL: http://tripbuilder.dev\api\v1\flights (DELETE)

## About the installation

-Make sure you have PHP >= 5.6.4 installed.
-You could use XAMPP or HOMESTEAD as your running enviroment. For XAMPP, go to https://www.apachefriends.org/index.html diownload and install. For homestead, follow the instructure on https://laravel.com/docs/5.3/homestead to install.
-If clone the code from gitHub, need to manurally install all missed components by using composer or npm. I would suggest you to download the attached TripBuilder.zip.bak file, rename it to TripBuilder.zip, extract to your code places. it will work properly. otherwise follow the below steps to install:

## Installation

You could find the installation screenshot file at: C:\xampp\htdocs\TripBuilder\miscellaneous\ScreenshotAndImportantInfo after you clone code.

1. Install XAMPP (https://www.apachefriends.org/index.html)
2. Go to the folder: C:\xampp\htdocs
git clone https://github.com/xiaofanggit/TripBuilder (suppose you already install git bash or tortoise git etc on your machine)
3. Create database on your MYSQL server named: trip_builder (or your own name.)
4. Rename the root file ".env.example" into ".env", change the database setting as yours. 
5. Check the TripBuilder/config/database.php, to make sure DB seting correct there
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=trip_builder
DB_USERNAME=admin
DB_PASSWORD=admin
6. Make sure the folders storage and the bootstrap/cache have writeable permission.
7. Make sure you install npm (https://nodejs.org/en/) and composer (https://getcomposer.org/), and also allow them be accessed everywhere.
8. Go into your project folder, for example: C:\xampp\htdocs\TripBuilder\ 
 npm install (this command will install all missed components into folder "node_modules".)
9. Install all missed vendor components using composer.
composer install
10.Since airport table contains around 750 real airport names and information, it is not good to put into migrate file. You have to imput it to db by yourself C:\xampp\htdocs\TripBuilder\miscellaneous\airports.sql
11. If you want to import all tables of the database, you could find the sql file: C:\xampp\htdocs\TripBuilder\miscellaneous\trip_builder.sql
If you import this sql file, then skip step 11 and go to step 12.
12. If all above go smoothly, you could run the below  two commands to automatically generate tables.
 php artisan migrate 
 php artisan db:seed
You don't need to do step 12 if you did step 11.
13. Create two virtual host domains, one is "http://tripbuilder.dev/" (restful api provider) and another is "http://tripbuilderclient.dev/" (api client)

Add the below code into file: C:\xampp\apache\conf\extra\httpd-vhosts.conf

<VirtualHost *:80>
    ServerName tripbuilder.dev
    ServerAlias www.tripbuilder.dev 
    DocumentRoot "C:/xampp/htdocs/TripBuilder/public"
</VirtualHost>

<VirtualHost *:80>
    ServerName tripbuilderclient.dev
    ServerAlias www.tripbuilderclient.dev 
    DocumentRoot "C:/xampp/htdocs/TripBuilderClient/public"
</VirtualHost>

Also add the below code into: C:\Windows\System32\drivers\etc\hosts
127.0.0.1 tripbuilder.dev
127.0.0.1 tripbuilderclient.dev

14. If all the above goes smoothly, when you try url: http://tripbuilder.dev/ , and could see the OAUTH2 create new client page.
15. First click the most right 'register' button to register yourself. For example, xiaofang@gmail.com/xiaofanggit/TripBuilder
16. After registration, you could login automatically, then create new client. Here 'client' means a site will use the api.

You can see all screenshots from the file: C:\xampp\htdocs\TripBuilder\miscellaneous\screenshots.pdf. and you could follow all steps there to use the api.

Next install the client, and you could find code from: https://github.com/xiaofanggit/TripBuilderClient, which is also a laravel project.
And you could find its installation file from read.md

## If your site cannot work properly, you could run the below two commands:
php artisan key:generate
php artisan config:clear


## How to use the project

-If installed properly, when input url: http://tripbuilder.dev/ 
you will see the login page. Register or login. 
-The link 'Create New Client' creates OAuth Clients, 'Create New Token' gets a Personal Access Tokens. 
-When clicking 'Create New Client' button, a popup will ask the client's name and redirect URL. RedirectUrl is the url on client side to return the access token. For example, "http://tripbuilderclient.dev/callback"
-Put the below code into your client site where to use the api:
Route::get('/', function () {

    $query = http_build_query([
        'client_id' => '{client id}',
        'redirect_uri' => 'http://tripbuilderclient.dev/callback', //change to your url
        'response_type' => 'code',
        'scope' => ''
    ]);

    return redirect('http://tripbuilder.dev/oauth/authorize?'.$query);
});

Route::get('/callback', function (Illuminate\Http\Request $request) {
    $http = new \GuzzleHttp\Client;

    $response = $http->post('http://tripbuilder.dev/oauth/token', [
        'form_params' => [
            'client_id' => 'client id',
            'client_secret' => 'X4yse2MGKxFd3gy2ORaQApehXjYCgTkxe7bBSaKE', //the secret token got when you create a client
            'grant_type' => 'authorization_code',
            'redirect_uri' => 'http://tripbuilderclient.dev/callback', //your url
            'code' => $request->code,
        ],
    ]);
    return  json_decode((string) $response->getBody(), true);
});
 The abouve token will be the real token to access all API call

