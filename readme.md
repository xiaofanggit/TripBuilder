## About the project

A RESTFUL API OAUth2 project using Laravel 5.3 passport to help clients building their trips.

Function1: Alphabetical listing of real airports in the world
-URL: http://tripbuilder.dev/api/v1/airports (GET): 

List of flights for a trip (the trip table testing data was created by the file: from \TripBuilder\database\seeds\DatabaseSeeder.php)
-URL: http://tripbuilder.dev\api\v1\lights?id={trip_id} (GET)

Adding flights to a trip
-URL: http://tripbuilder.dev\api\v1\flights (POST) @param int $trip_id: id of a trip, @param int $start_airport: id of a source airport , @param ing $end_airport: id of a destination airport

-URL: http://tripbuilder.dev\api\v1\flights (DELETE)
-Removing flights from a trip 5. 

## About the installation

-Make sure you have PHP >= 5.6.4 installed in your machine.
-You could use XAMPP or HOMESTEAD as your running enviroment. For XAMPP, go to https://www.apachefriends.org/index.html diownload and install. For homestead, follow the instructure on https://laravel.com/docs/5.3/homestead to install.
-If clone the code from gitHub, need to manurally install all missed components by using composer or npm. I would suggest you to download the attached TripBuilder.zip.bak file, rename to TripBuilder.zip, extract to your code places. it will work properly, otherwise follow the  https://laravel.com/docs/5.3/passport to install:
-Make sure the folders storage and the bootstrap/cache have writeable permission.

## How to use the project

-If installed properly, when input url: http://tripbuilder.dev/ (this is a virtual domain set by myself, yours could be different),
you will see the login page. Register or login. 
-The link 'Create New Client' creates OAuth Clients if you are a third party to use this API, 'Create New Token' gets a Personal Access Tokens. After clicking 'Create New Client' button, a popup will ask the client's name and redirect URL. RedirectUrl is the url on client side to return the access token. For example, mine is: "http://tripbuilderclient.dev/callback"
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
    $token =  json_decode((string) $response->getBody(), true);
    return $token;
});
 The abouve token will be the real token to access all API call

