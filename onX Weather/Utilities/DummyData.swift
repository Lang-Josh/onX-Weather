import Foundation

struct DummyData {
    
    static let todaysWeatherData: String = """
[
    {
        "id": "K1D3",
        "name": "PLATTE",
        "longitude": -98.82952,
        "latitude": 43.40332,
        "temperature": 46.4,
        "wind_speed": 6.90468887898,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "K1S5",
        "name": "Sunnyside Municipal Airport",
        "longitude": -119.9704,
        "latitude": 46.3271,
        "temperature": 54.5,
        "wind_speed": 9,
        "wind_direction": 360,
        "chance_of_precipitation": 80
    },
    {
        "id": "K46U",
        "name": "Alpine",
        "longitude": -111.0424,
        "latitude": 43.1846,
        "temperature": 51.8,
        "wind_speed": 6,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "K6S5",
        "name": "HAMILTON",
        "longitude": -114.12554,
        "latitude": 46.25149,
        "temperature": 64.39998901367193,
        "wind_speed": null,
        "wind_direction": null,
        "chance_of_precipitation": 60
    },
    {
        "id": "K6V4",
        "name": "WALLMUNC",
        "longitude": -102.2546,
        "latitude": 43.99949,
        "temperature": null,
        "wind_speed": null,
        "wind_direction": null,
        "chance_of_precipitation": 0
    },
    {
        "id": "K82V",
        "name": "Pine Bluffs Municipal Airport",
        "longitude": -104.1302,
        "latitude": 41.1533,
        "temperature": 68,
        "wind_speed": 3,
        "wind_direction": 80,
        "chance_of_precipitation": 0
    },
    {
        "id": "K8D3",
        "name": "Sisseton Municipal Airport",
        "longitude": -96.99139,
        "latitude": 45.66889,
        "temperature": 50,
        "wind_speed": 12,
        "wind_direction": 310,
        "chance_of_precipitation": 0
    },
    {
        "id": "KADC",
        "name": "Wadena Municipal Airport",
        "longitude": -95.21353,
        "latitude": 46.45022,
        "temperature": 46.4,
        "wind_speed": 10,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KADM",
        "name": "Ardmore Municipal Airport",
        "longitude": -97.01944,
        "latitude": 34.30306,
        "temperature": 73.4,
        "wind_speed": 14,
        "wind_direction": 150,
        "chance_of_precipitation": 0
    },
    {
        "id": "KAFO",
        "name": "Afton WY",
        "longitude": -110.94217,
        "latitude": 42.71133,
        "temperature": 42.8,
        "wind_speed": 5,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KALK",
        "name": "Pioneer Airfield",
        "longitude": -110.4281,
        "latitude": 31.60564,
        "temperature": 78.98,
        "wind_speed": 7,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KALM",
        "name": "Alamogordo-White",
        "longitude": -105.98333,
        "latitude": 32.83333,
        "temperature": 77,
        "wind_speed": 10,
        "wind_direction": 140,
        "chance_of_precipitation": 0
    },
    {
        "id": "KALO",
        "name": "Waterloo Municipal Airport",
        "longitude": -92.40111,
        "latitude": 42.55444,
        "temperature": 66.92,
        "wind_speed": 15,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KATY",
        "name": "Watertown Municipal Airport",
        "longitude": -97.14944,
        "latitude": 44.90472,
        "temperature": 51.08,
        "wind_speed": 10,
        "wind_direction": 330,
        "chance_of_precipitation": 0
    },
    {
        "id": "KAUS",
        "name": "Austin-Bergstrom International Airport",
        "longitude": -97.67987,
        "latitude": 30.18304,
        "temperature": 78.08000000000001,
        "wind_speed": 10,
        "wind_direction": 140,
        "chance_of_precipitation": 0
    },
    {
        "id": "KAWO",
        "name": "Arlington Municipal",
        "longitude": -122.16667,
        "latitude": 48.16667,
        "temperature": 59,
        "wind_speed": 13,
        "wind_direction": 290,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBAC",
        "name": "Valley City",
        "longitude": -98.018,
        "latitude": 46.9412,
        "temperature": 42.8,
        "wind_speed": 21,
        "wind_direction": 310,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBFF",
        "name": "Heilig Field",
        "longitude": -103.58583,
        "latitude": 41.86694,
        "temperature": 71.06,
        "wind_speed": 6,
        "wind_direction": 60,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBFL",
        "name": "Meadows Field Airport",
        "longitude": -119.05667,
        "latitude": 35.43361,
        "temperature": 73.94,
        "wind_speed": 11,
        "wind_direction": 320,
        "chance_of_precipitation": 20
    },
    {
        "id": "KBIE",
        "name": "Beatrice Municipal",
        "longitude": -96.75,
        "latitude": 40.3,
        "temperature": 76.1,
        "wind_speed": 16,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBKX",
        "name": "Brookings Municipal Airport",
        "longitude": -96.81667,
        "latitude": 44.3,
        "temperature": 59,
        "wind_speed": 12,
        "wind_direction": 320,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBLI",
        "name": "Bellingham International Airport",
        "longitude": -122.54064,
        "latitude": 48.79911,
        "temperature": 64.03999999999999,
        "wind_speed": 13,
        "wind_direction": 20,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBPI",
        "name": "Big Piney-Marbleton Airport",
        "longitude": -110.10306,
        "latitude": 42.57889,
        "temperature": 42.980000000000004,
        "wind_speed": 9,
        "wind_direction": 80,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBPK",
        "name": "Baxter County Regional Airport",
        "longitude": -92.47194,
        "latitude": 36.37056,
        "temperature": 66.92,
        "wind_speed": 7,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBRD",
        "name": "Brainerd - Crow Wing County Airport",
        "longitude": -94.12734,
        "latitude": 46.40205,
        "temperature": 59,
        "wind_speed": 12,
        "wind_direction": 250,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBRL",
        "name": "Burlington Regional Airport",
        "longitude": -91.12528,
        "latitude": 40.77278,
        "temperature": 64.03999999999999,
        "wind_speed": 15,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBRO",
        "name": "Brownsville / South Padre Island International Airport",
        "longitude": -97.42306,
        "latitude": 25.91417,
        "temperature": 78.08000000000001,
        "wind_speed": 14,
        "wind_direction": 130,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBTM",
        "name": "Bert Mooney Airport",
        "longitude": -112.4975,
        "latitude": 45.95472,
        "temperature": 42.08,
        "wind_speed": 7,
        "wind_direction": 100,
        "chance_of_precipitation": 80
    },
    {
        "id": "KBVO",
        "name": "Bartlesville Municipal Airport",
        "longitude": -96.02611,
        "latitude": 36.76833,
        "temperature": 71.06,
        "wind_speed": 14,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBVX",
        "name": "Batesville Regional Airport",
        "longitude": -91.65,
        "latitude": 35.73333,
        "temperature": 66.02,
        "wind_speed": 7,
        "wind_direction": 110,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBXK",
        "name": "Buckeye Municipal Airport",
        "longitude": -112.6862,
        "latitude": 33.4204,
        "temperature": 80.6,
        "wind_speed": 5,
        "wind_direction": 160,
        "chance_of_precipitation": 0
    },
    {
        "id": "KBYI",
        "name": "Burley Municipal Airport",
        "longitude": -113.7686,
        "latitude": 42.54525,
        "temperature": 48.92,
        "wind_speed": 4,
        "wind_direction": 290,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCDC",
        "name": "Cedar City Municipal Airport",
        "longitude": -113.09695,
        "latitude": 37.70675,
        "temperature": 60.980000000000004,
        "wind_speed": 17,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCLM",
        "name": "Port Angeles Fairchild International Airport",
        "longitude": -123.50661,
        "latitude": 48.12194,
        "temperature": 53.06,
        "wind_speed": 6,
        "wind_direction": 100,
        "chance_of_precipitation": 30
    },
    {
        "id": "KCNM",
        "name": "Cavern City Air Terminal Airport",
        "longitude": -104.26333,
        "latitude": 32.3375,
        "temperature": 82.03999999999999,
        "wind_speed": 18,
        "wind_direction": 130,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCOD",
        "name": "Cody",
        "longitude": -109.01667,
        "latitude": 44.51667,
        "temperature": 53.06,
        "wind_speed": 9,
        "wind_direction": 360,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCRP",
        "name": "Corpus Christi International Airport",
        "longitude": -97.51278,
        "latitude": 27.77306,
        "temperature": 77,
        "wind_speed": 17,
        "wind_direction": 120,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCTB",
        "name": "Cut Bank Municipal Airport",
        "longitude": -112.37611,
        "latitude": 48.60833,
        "temperature": 42.08,
        "wind_speed": 6,
        "wind_direction": 50,
        "chance_of_precipitation": 30
    },
    {
        "id": "KCYS",
        "name": "Cheyenne Airport",
        "longitude": -104.80812,
        "latitude": 41.15789,
        "temperature": 64.94,
        "wind_speed": 7,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KCZZ",
        "name": "Campo",
        "longitude": -116.46833,
        "latitude": 32.62611,
        "temperature": 64.03999999999999,
        "wind_speed": 9,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KD07",
        "name": "Faith",
        "longitude": -102.01917,
        "latitude": 45.03194,
        "temperature": 53.96,
        "wind_speed": 13,
        "wind_direction": 360,
        "chance_of_precipitation": 0
    },
    {
        "id": "KD57",
        "name": "Glen Ullin Regional Airport",
        "longitude": -101.8602,
        "latitude": 46.8128,
        "temperature": 50,
        "wind_speed": 18,
        "wind_direction": 330,
        "chance_of_precipitation": 0
    },
    {
        "id": "KD60",
        "name": "TIOGA",
        "longitude": -102.9,
        "latitude": 48.38,
        "temperature": 39.2,
        "wind_speed": 11,
        "wind_direction": 320,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDBQ",
        "name": "Dubuque Regional Airport",
        "longitude": -90.70361,
        "latitude": 42.39778,
        "temperature": 60.980000000000004,
        "wind_speed": 24,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDDC",
        "name": "Dodge City Regional Airport",
        "longitude": -99.96972,
        "latitude": 37.77278,
        "temperature": 78.08000000000001,
        "wind_speed": 18,
        "wind_direction": 190,
        "chance_of_precipitation": 20
    },
    {
        "id": "KDGW",
        "name": "Converse County Airport",
        "longitude": -105.38194,
        "latitude": 42.79417,
        "temperature": 64.94,
        "wind_speed": 4,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDMN",
        "name": "Deming Municipal Airport",
        "longitude": -107.72056,
        "latitude": 32.26222,
        "temperature": 82.03999999999999,
        "wind_speed": 10,
        "wind_direction": 260,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDPG",
        "name": "Dugway Proving Grounds",
        "longitude": -112.93333,
        "latitude": 40.16667,
        "temperature": 65.48,
        "wind_speed": 10,
        "wind_direction": 160,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDUA",
        "name": "Eaker Field Airport",
        "longitude": -96.39444,
        "latitude": 33.94222,
        "temperature": 71.6,
        "wind_speed": 13,
        "wind_direction": 160,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDUB",
        "name": "Dubois Municipal Airport",
        "longitude": -109.6903,
        "latitude": 43.5484,
        "temperature": 51.8,
        "wind_speed": 13,
        "wind_direction": 290,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDVL",
        "name": "Devils Lake Municipal Airport",
        "longitude": -98.91667,
        "latitude": 48.11667,
        "temperature": 39.019999999999996,
        "wind_speed": 18,
        "wind_direction": 290,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDVN",
        "name": "Davenport Municipal Airport",
        "longitude": -90.59139,
        "latitude": 41.61389,
        "temperature": 62.06,
        "wind_speed": 13,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KDWX",
        "name": "Dixon Airport",
        "longitude": -107.49976,
        "latitude": 41.03704,
        "temperature": 55.040000000000006,
        "wind_speed": 12,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KEAR",
        "name": "Kearney Municipal Airport",
        "longitude": -99,
        "latitude": 40.73333,
        "temperature": 75.02,
        "wind_speed": 10,
        "wind_direction": 280,
        "chance_of_precipitation": 0
    },
    {
        "id": "KEAU",
        "name": "Chippewa Valley Regional Airport",
        "longitude": -91.485,
        "latitude": 44.86528,
        "temperature": 57.92,
        "wind_speed": 14,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KECS",
        "name": "Mondell Field",
        "longitude": -104.3179,
        "latitude": 43.8854,
        "temperature": 59,
        "wind_speed": 6,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KEHY",
        "name": "Elk Mountain AWOS",
        "longitude": -106.4594,
        "latitude": 41.7253,
        "temperature": 59,
        "wind_speed": 15,
        "wind_direction": 250,
        "chance_of_precipitation": 0
    },
    {
        "id": "KELD",
        "name": "South Arkansas Regional at Goodwin Field Airport",
        "longitude": -92.81333,
        "latitude": 33.22083,
        "temperature": 69.08000000000001,
        "wind_speed": 6,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KELO",
        "name": "Ely Municipal Airport",
        "longitude": -91.83333,
        "latitude": 47.81667,
        "temperature": 53.6,
        "wind_speed": 14,
        "wind_direction": 230,
        "chance_of_precipitation": 0
    },
    {
        "id": "KELP",
        "name": "El Paso International Airport",
        "longitude": -106.37583,
        "latitude": 31.81111,
        "temperature": 84.92,
        "wind_speed": 10,
        "wind_direction": 250,
        "chance_of_precipitation": 0
    },
    {
        "id": "KEMP",
        "name": "Emporia Municipal Airport",
        "longitude": -96.19389,
        "latitude": 38.32889,
        "temperature": 73.03999999999999,
        "wind_speed": 24,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KEVW",
        "name": "Evanston-Uinta County Burns Field",
        "longitude": -111.03056,
        "latitude": 41.27306,
        "temperature": 48.019999999999996,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFAM",
        "name": "Farmington Airport",
        "longitude": -90.43333,
        "latitude": 37.76667,
        "temperature": 64.03999999999999,
        "wind_speed": 14,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFBR",
        "name": "Fort Bridger WY",
        "longitude": -110.40683,
        "latitude": 41.392,
        "temperature": 41,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFFM",
        "name": "Fergus Falls Municipal Airport-Einar Mickel",
        "longitude": -96.15338,
        "latitude": 46.28655,
        "temperature": 44.6,
        "wind_speed": 8,
        "wind_direction": 280,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFNL",
        "name": "Fort Collins-Loveland Municipal Airport",
        "longitude": -105.01667,
        "latitude": 40.45,
        "temperature": 71.96000000000001,
        "wind_speed": 11,
        "wind_direction": 130,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFOD",
        "name": "Fort Dodge",
        "longitude": -94.18333,
        "latitude": 42.55,
        "temperature": 69.08000000000001,
        "wind_speed": 14,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFOE",
        "name": "Forbes Field",
        "longitude": -95.65056,
        "latitude": 38.94139,
        "temperature": 73.03999999999999,
        "wind_speed": 19,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KFSM",
        "name": "Fort Smith Regional Airport",
        "longitude": -94.365,
        "latitude": 35.33361,
        "temperature": 71.06,
        "wind_speed": 4,
        "wind_direction": 150,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGAF",
        "name": "GRAFTON",
        "longitude": -97.37,
        "latitude": 48.4,
        "temperature": 41,
        "wind_speed": 16,
        "wind_direction": 310,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGCK",
        "name": "Garden City Regional Airport",
        "longitude": -100.72444,
        "latitude": 37.9275,
        "temperature": 78.98,
        "wind_speed": 9,
        "wind_direction": 170,
        "chance_of_precipitation": 20
    },
    {
        "id": "KGEY",
        "name": "South Big Horn County Airport",
        "longitude": -108.0752,
        "latitude": 44.5174,
        "temperature": 62.96,
        "wind_speed": 5,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGLH",
        "name": "Mid Delta Regional Airport",
        "longitude": -90.98556,
        "latitude": 33.48278,
        "temperature": 64.94,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGNT",
        "name": "Grants-Milan Municipal Airport",
        "longitude": -107.90222,
        "latitude": 35.16528,
        "temperature": 71.06,
        "wind_speed": 6,
        "wind_direction": 230,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGXA",
        "name": "Gray Butte Field Airport",
        "longitude": -117.6704,
        "latitude": 34.5666,
        "temperature": 64.4,
        "wind_speed": 19,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KGXF",
        "name": "Gila Bend Air Force Auxiliary Field",
        "longitude": -112.72,
        "latitude": 32.8875,
        "temperature": 81.5,
        "wind_speed": 5,
        "wind_direction": 300,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHDC",
        "name": "Hammond Municipal Airport",
        "longitude": -90.4175,
        "latitude": 30.52083,
        "temperature": 77,
        "wind_speed": 5,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHEZ",
        "name": "Hardy-Anders Field Natchez-Adams County Airport",
        "longitude": -91.29724,
        "latitude": 31.61593,
        "temperature": 69.98,
        "wind_speed": 5,
        "wind_direction": 290,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHIB",
        "name": "Chisholm-Hibbing Airport",
        "longitude": -92.83245,
        "latitude": 47.38039,
        "temperature": 57.92,
        "wind_speed": 11,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHLN",
        "name": "Helena Regional Airport",
        "longitude": -111.9892,
        "latitude": 46.60445,
        "temperature": 39.019999999999996,
        "wind_speed": 3,
        "wind_direction": 260,
        "chance_of_precipitation": 80
    },
    {
        "id": "KHON",
        "name": "Huron Regional Airport",
        "longitude": -98.22833,
        "latitude": 44.38806,
        "temperature": 55.94,
        "wind_speed": 12,
        "wind_direction": 340,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHOT",
        "name": "Memorial Field Airport",
        "longitude": -93.09611,
        "latitude": 34.47806,
        "temperature": 66.92,
        "wind_speed": 4,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHRO",
        "name": "Boone County Airport",
        "longitude": -93.15472,
        "latitude": 36.26167,
        "temperature": 68,
        "wind_speed": 10,
        "wind_direction": 140,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHUM",
        "name": "Houma-Terrebonne",
        "longitude": -90.66667,
        "latitude": 29.56667,
        "temperature": 71.6,
        "wind_speed": 11,
        "wind_direction": 80,
        "chance_of_precipitation": 0
    },
    {
        "id": "KHUT",
        "name": "Hutchinson Municipal Airport",
        "longitude": -97.86056,
        "latitude": 38.06806,
        "temperature": 73.03999999999999,
        "wind_speed": 17,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KIEN",
        "name": "Pine Ridge Airport",
        "longitude": -102.52306,
        "latitude": 43.02556,
        "temperature": 64.94,
        "wind_speed": 7,
        "wind_direction": 50,
        "chance_of_precipitation": 0
    },
    {
        "id": "KIGM",
        "name": "Kingman Airport",
        "longitude": -113.93306,
        "latitude": 35.25778,
        "temperature": 71.96000000000001,
        "wind_speed": 16,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KINS",
        "name": "Nellis AFB - Indian Springs Auxiliary Airfield",
        "longitude": -115.69008,
        "latitude": 36.58573,
        "temperature": 75.2,
        "wind_speed": 12,
        "wind_direction": 40,
        "chance_of_precipitation": 0
    },
    {
        "id": "KINW",
        "name": "Winslow Municipal Airport",
        "longitude": -110.72083,
        "latitude": 35.02806,
        "temperature": 73.94,
        "wind_speed": 12,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KJAC",
        "name": "Jackson Hole Airport",
        "longitude": -110.73333,
        "latitude": 43.6,
        "temperature": 44.06,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KJBR",
        "name": "Jonesboro Municipal Airport",
        "longitude": -90.64306,
        "latitude": 35.83722,
        "temperature": 64.03999999999999,
        "wind_speed": 7,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KJLN",
        "name": "Joplin Regional Airport",
        "longitude": -94.50056,
        "latitude": 37.15611,
        "temperature": 69.08000000000001,
        "wind_speed": 17,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KKLS",
        "name": "Kelso-Longview Airport",
        "longitude": -122.9,
        "latitude": 46.11667,
        "temperature": 50,
        "wind_speed": 3,
        "wind_direction": 170,
        "chance_of_precipitation": 80
    },
    {
        "id": "KL35",
        "name": "Big Bear City Airport",
        "longitude": -116.856,
        "latitude": 34.2638,
        "temperature": 51.8,
        "wind_speed": 8,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLAW",
        "name": "Lawton Municipal Airport",
        "longitude": -98.41667,
        "latitude": 34.5575,
        "temperature": 73.03999999999999,
        "wind_speed": 17,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLBB",
        "name": "Lubbock International Airport",
        "longitude": -101.82139,
        "latitude": 33.6675,
        "temperature": 78.98,
        "wind_speed": 15,
        "wind_direction": 180,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLFT",
        "name": "Lafayette Regional Airport",
        "longitude": -91.99306,
        "latitude": 30.20222,
        "temperature": 73.94,
        "wind_speed": 5,
        "wind_direction": 340,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLGU",
        "name": "Logan-Cache Airport",
        "longitude": -111.85187,
        "latitude": 41.78652,
        "temperature": 60.980000000000004,
        "wind_speed": 11,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLMT",
        "name": "Klamath Falls International Airport",
        "longitude": -121.72548,
        "latitude": 42.14703,
        "temperature": 48.019999999999996,
        "wind_speed": 17,
        "wind_direction": 170,
        "chance_of_precipitation": 90
    },
    {
        "id": "KLNK",
        "name": "Lincoln Municipal Airport",
        "longitude": -96.76444,
        "latitude": 40.83111,
        "temperature": 73.94,
        "wind_speed": 16,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLNR",
        "name": "Lone Rock Tri-County Regional Airport",
        "longitude": -90.18735,
        "latitude": 43.21108,
        "temperature": 62.96,
        "wind_speed": 17,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLSE",
        "name": "La Crosse - La Crosse Regional Airport",
        "longitude": -91.25667,
        "latitude": 43.87944,
        "temperature": 66.02,
        "wind_speed": 16,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLVM",
        "name": "Mission Field Airport",
        "longitude": -110.44833,
        "latitude": 45.69944,
        "temperature": 39.92,
        "wind_speed": 11,
        "wind_direction": 110,
        "chance_of_precipitation": 50
    },
    {
        "id": "KLVS",
        "name": "Las Vegas Municipal Airport",
        "longitude": -105.1425,
        "latitude": 35.65417,
        "temperature": 71.06,
        "wind_speed": 18,
        "wind_direction": 250,
        "chance_of_precipitation": 0
    },
    {
        "id": "KLWT",
        "name": "Lewistown Municipal Airport",
        "longitude": -109.46639,
        "latitude": 47.04917,
        "temperature": 39.019999999999996,
        "wind_speed": 11,
        "wind_direction": 30,
        "chance_of_precipitation": 60
    },
    {
        "id": "KLXN",
        "name": "Jim Kelly Field Airport",
        "longitude": -99.77722,
        "latitude": 40.79111,
        "temperature": 75.56,
        "wind_speed": 8,
        "wind_direction": 300,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMCB",
        "name": "McComb / Pike County / John E Lewis Field Airport",
        "longitude": -90.47194,
        "latitude": 31.17833,
        "temperature": 73.03999999999999,
        "wind_speed": 3,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMCW",
        "name": "Mason City Municipal Airport",
        "longitude": -93.33139,
        "latitude": 43.15778,
        "temperature": 66.02,
        "wind_speed": 15,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMEV",
        "name": "Minden-Tahoe Airport",
        "longitude": -119.75,
        "latitude": 38.9963,
        "temperature": 53.6,
        "wind_speed": 20,
        "wind_direction": 150,
        "chance_of_precipitation": 80
    },
    {
        "id": "KMGG",
        "name": "Maple Lake Municipal Airport",
        "longitude": -93.98959,
        "latitude": 45.23535,
        "temperature": 60.620000000000005,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMHE",
        "name": "Mitchell Municipal Airport",
        "longitude": -98.03333,
        "latitude": 43.76667,
        "temperature": 59,
        "wind_speed": 13,
        "wind_direction": 340,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMHK",
        "name": "Manhattan Municipal Airport",
        "longitude": -96.67778,
        "latitude": 39.13528,
        "temperature": 75.02,
        "wind_speed": 17,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMIW",
        "name": "Marshalltown Municipal Airport",
        "longitude": -92.91611,
        "latitude": 42.11056,
        "temperature": 66.92,
        "wind_speed": 20,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMKO",
        "name": "Davis Field",
        "longitude": -95.35972,
        "latitude": 35.65694,
        "temperature": 69.08000000000001,
        "wind_speed": 15,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMKT",
        "name": "Mankato Regional Airport",
        "longitude": -93.91667,
        "latitude": 44.21667,
        "temperature": 64.03999999999999,
        "wind_speed": 12,
        "wind_direction": 260,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMLC",
        "name": "McAlester Regional Airport",
        "longitude": -95.78306,
        "latitude": 34.88222,
        "temperature": 69.98,
        "wind_speed": 11,
        "wind_direction": 160,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMLS",
        "name": "Frank Wiley Field Airport",
        "longitude": -105.88639,
        "latitude": 46.42806,
        "temperature": 48.92,
        "wind_speed": 6,
        "wind_direction": 340,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMRY",
        "name": "Monterey Peninsula Airport",
        "longitude": -121.8475,
        "latitude": 36.59056,
        "temperature": 62.96,
        "wind_speed": 9,
        "wind_direction": 250,
        "chance_of_precipitation": 80
    },
    {
        "id": "KMSY",
        "name": "New Orleans International Airport",
        "longitude": -90.25083,
        "latitude": 29.99278,
        "temperature": 73.03999999999999,
        "wind_speed": 8,
        "wind_direction": 90,
        "chance_of_precipitation": 0
    },
    {
        "id": "KMUO",
        "name": "Mountain Home Air Force Base",
        "longitude": -115.86667,
        "latitude": 43.05,
        "temperature": 61.7,
        "wind_speed": 7,
        "wind_direction": 80,
        "chance_of_precipitation": 60
    },
    {
        "id": "KMWH",
        "name": "Grant County Airport",
        "longitude": -119.31451,
        "latitude": 47.19299,
        "temperature": 57.019999999999996,
        "wind_speed": 9,
        "wind_direction": 30,
        "chance_of_precipitation": 60
    },
    {
        "id": "KN60",
        "name": "Garrison",
        "longitude": -101.43944,
        "latitude": 47.64583,
        "temperature": 44.06,
        "wind_speed": 23,
        "wind_direction": 330,
        "chance_of_precipitation": 0
    },
    {
        "id": "KNFG",
        "name": "Marine Corps Air Station",
        "longitude": -117.35389,
        "latitude": 33.30472,
        "temperature": 64.03999999999999,
        "wind_speed": 12,
        "wind_direction": 260,
        "chance_of_precipitation": 0
    },
    {
        "id": "KNID",
        "name": "Naval Air Facility",
        "longitude": -117.69,
        "latitude": 35.68639,
        "temperature": 73.03999999999999,
        "wind_speed": 18,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KNSI",
        "name": "San Nicholas Island",
        "longitude": -119.45278,
        "latitude": 33.23472,
        "temperature": 66.02,
        "wind_speed": 7,
        "wind_direction": 240,
        "chance_of_precipitation": 20
    },
    {
        "id": "KNUC",
        "name": "San Clemente Island NALF",
        "longitude": -118.58266,
        "latitude": 33.0218,
        "temperature": 66.02,
        "wind_speed": 5,
        "wind_direction": 290,
        "chance_of_precipitation": 20
    },
    {
        "id": "KNXP",
        "name": "Marine Corps Air-Ground Combat Center",
        "longitude": -116.145,
        "latitude": 34.29444,
        "temperature": 73.94,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KNYL",
        "name": "Marine Corps Air Station",
        "longitude": -114.59306,
        "latitude": 32.65944,
        "temperature": 84.02,
        "wind_speed": 7,
        "wind_direction": 250,
        "chance_of_precipitation": 0
    },
    {
        "id": "KOFK",
        "name": "Stefan Memorial Airport",
        "longitude": -97.43694,
        "latitude": 41.98056,
        "temperature": null,
        "wind_speed": 9,
        "wind_direction": 230,
        "chance_of_precipitation": 0
    },
    {
        "id": "KOLF",
        "name": "Clayton Airport",
        "longitude": -105.57722,
        "latitude": 48.09444,
        "temperature": 46.94,
        "wind_speed": 9,
        "wind_direction": 350,
        "chance_of_precipitation": 0
    },
    {
        "id": "KOLU",
        "name": "Columbus Municipal Airport",
        "longitude": -97.33333,
        "latitude": 41.45,
        "temperature": 69.98,
        "wind_speed": 10,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KORC",
        "name": "Orange City",
        "longitude": -96.06667,
        "latitude": 42.98333,
        "temperature": 12.2,
        "wind_speed": 3,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KOTM",
        "name": "Ottumwa Industrial Airport",
        "longitude": -92.44806,
        "latitude": 41.10667,
        "temperature": 66.92,
        "wind_speed": 20,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KOXR",
        "name": "Oxnard Airport",
        "longitude": -119.20306,
        "latitude": 34.20056,
        "temperature": 64.94,
        "wind_speed": 6,
        "wind_direction": 200,
        "chance_of_precipitation": 20
    },
    {
        "id": "KP60",
        "name": "Yellowstone Lake",
        "longitude": -110.42111,
        "latitude": 44.54444,
        "temperature": 46.04,
        "wind_speed": 6,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPBF",
        "name": "Grider Field Airport",
        "longitude": -91.93472,
        "latitude": 34.175,
        "temperature": 64.94,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPDT",
        "name": "Eastern Oregon Regional At Pendleton Airport",
        "longitude": -118.83417,
        "latitude": 45.69833,
        "temperature": 46.04,
        "wind_speed": 7,
        "wind_direction": 320,
        "chance_of_precipitation": 90
    },
    {
        "id": "KPNC",
        "name": "Ponca City Municipal Airport",
        "longitude": -97.09972,
        "latitude": 36.73056,
        "temperature": 71.96000000000001,
        "wind_speed": 14,
        "wind_direction": 170,
        "chance_of_precipitation": 20
    },
    {
        "id": "KPOC",
        "name": "La Verne / Brackett",
        "longitude": -117.78333,
        "latitude": 34.1,
        "temperature": 68,
        "wind_speed": 14,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPOE",
        "name": "Polk AAF Ft Polk",
        "longitude": -93.19389,
        "latitude": 31.05,
        "temperature": 72.32,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPRC",
        "name": "Love Field",
        "longitude": -112.42222,
        "latitude": 34.64917,
        "temperature": 68,
        "wind_speed": 14,
        "wind_direction": 230,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPSP",
        "name": "Palm Springs Regional Airport",
        "longitude": -116.50431,
        "latitude": 33.82219,
        "temperature": 80.96000000000001,
        "wind_speed": 4,
        "wind_direction": 260,
        "chance_of_precipitation": 0
    },
    {
        "id": "KPTN",
        "name": "Patterson Memorial",
        "longitude": -91.33333,
        "latitude": 29.71667,
        "temperature": 71.96000000000001,
        "wind_speed": 8,
        "wind_direction": 60,
        "chance_of_precipitation": 0
    },
    {
        "id": "KRBG",
        "name": "Roseburg Regional Airport",
        "longitude": -123.35611,
        "latitude": 43.23389,
        "temperature": 57.92,
        "wind_speed": 9,
        "wind_direction": 260,
        "chance_of_precipitation": 90
    },
    {
        "id": "KRIL",
        "name": "Garfield County Regional Airport",
        "longitude": -107.72722,
        "latitude": 39.525,
        "temperature": 69.08000000000001,
        "wind_speed": 11,
        "wind_direction": 240,
        "chance_of_precipitation": 0
    },
    {
        "id": "KRIV",
        "name": "Riverside / March Air Force Base",
        "longitude": -117.25,
        "latitude": 33.9,
        "temperature": 67.64,
        "wind_speed": 8,
        "wind_direction": 280,
        "chance_of_precipitation": 0
    },
    {
        "id": "KRLD",
        "name": "Richland Airport",
        "longitude": -119.3058,
        "latitude": 46.30859,
        "temperature": 57.379999999999995,
        "wind_speed": 8,
        "wind_direction": 10,
        "chance_of_precipitation": 70
    },
    {
        "id": "KRST",
        "name": "Rochester International Airport",
        "longitude": -92.49167,
        "latitude": 43.90417,
        "temperature": 59,
        "wind_speed": 14,
        "wind_direction": 210,
        "chance_of_precipitation": 0
    },
    {
        "id": "KRUE",
        "name": "Russellville Regional Airport",
        "longitude": -93.09333,
        "latitude": 35.25889,
        "temperature": 69.08000000000001,
        "wind_speed": 7,
        "wind_direction": 150,
        "chance_of_precipitation": 0
    },
    {
        "id": "KS25",
        "name": "WATFORD CITY",
        "longitude": -103.25,
        "latitude": 47.8,
        "temperature": 42.8,
        "wind_speed": 14,
        "wind_direction": 320,
        "chance_of_precipitation": 0
    },
    {
        "id": "KS34",
        "name": "PLAINS",
        "longitude": -114.90708,
        "latitude": 47.47355,
        "temperature": 37.4,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 30
    },
    {
        "id": "KS59",
        "name": "Libby",
        "longitude": -115.49,
        "latitude": 48.284,
        "temperature": 30.2,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSAF",
        "name": "Santa Fe County Municipal Airport",
        "longitude": -106.09573,
        "latitude": 35.61097,
        "temperature": 73.03999999999999,
        "wind_speed": 14,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSBA",
        "name": "Santa Barbara Municipal Airport",
        "longitude": -119.84361,
        "latitude": 34.42611,
        "temperature": 62.96,
        "wind_speed": 5,
        "wind_direction": 200,
        "chance_of_precipitation": 50
    },
    {
        "id": "KSCK",
        "name": "Stockton Metropolitan Airport",
        "longitude": -121.22361,
        "latitude": 37.88972,
        "temperature": 60.980000000000004,
        "wind_speed": 18,
        "wind_direction": 210,
        "chance_of_precipitation": 90
    },
    {
        "id": "KSDY",
        "name": "Sidney-Richland",
        "longitude": -104.2,
        "latitude": 47.7,
        "temperature": 46.04,
        "wind_speed": 14,
        "wind_direction": 330,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSJN",
        "name": "St. Johns Industrial Airpark",
        "longitude": -109.37917,
        "latitude": 34.51833,
        "temperature": 69.98,
        "wind_speed": 11,
        "wind_direction": 260,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSLE",
        "name": "McNary Field",
        "longitude": -122.995,
        "latitude": 44.90778,
        "temperature": 53.96,
        "wind_speed": 4,
        "wind_direction": 350,
        "chance_of_precipitation": 90
    },
    {
        "id": "KSLN",
        "name": "Salina Municipal Airport",
        "longitude": -97.64417,
        "latitude": 38.78,
        "temperature": 73.94,
        "wind_speed": 21,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSMF",
        "name": "Sacramento International Airport",
        "longitude": -121.59479,
        "latitude": 38.70071,
        "temperature": 57.019999999999996,
        "wind_speed": 15,
        "wind_direction": 170,
        "chance_of_precipitation": 80
    },
    {
        "id": "KSMX",
        "name": "Santa Maria Public Airport",
        "longitude": -120.44861,
        "latitude": 34.89944,
        "temperature": 68,
        "wind_speed": 12,
        "wind_direction": 230,
        "chance_of_precipitation": 70
    },
    {
        "id": "KSTJ",
        "name": "Rosecrans Memorial Airport",
        "longitude": -94.90917,
        "latitude": 39.76806,
        "temperature": 69.98,
        "wind_speed": 16,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSTS",
        "name": "Santa Rosa Sonoma County Airport",
        "longitude": -122.81667,
        "latitude": 38.5,
        "temperature": 59,
        "wind_speed": 12,
        "wind_direction": 240,
        "chance_of_precipitation": 40
    },
    {
        "id": "KSUN",
        "name": "Friedman Memorial Airport",
        "longitude": -114.3,
        "latitude": 43.5,
        "temperature": 48.2,
        "wind_speed": 0,
        "wind_direction": 0,
        "chance_of_precipitation": 30
    },
    {
        "id": "KSVC",
        "name": "Silver City / Grant",
        "longitude": -108.15,
        "latitude": 32.63333,
        "temperature": 73.58000000000001,
        "wind_speed": 7,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSWO",
        "name": "Stillwater Regional Airport",
        "longitude": -97.08917,
        "latitude": 36.16222,
        "temperature": 73.03999999999999,
        "wind_speed": 12,
        "wind_direction": 190,
        "chance_of_precipitation": 0
    },
    {
        "id": "KSZT",
        "name": "Sandpoint Airport",
        "longitude": -116.56,
        "latitude": 48.29944,
        "temperature": 51.8,
        "wind_speed": 11,
        "wind_direction": 20,
        "chance_of_precipitation": 0
    },
    {
        "id": "KTPH",
        "name": "Tonopah Airport",
        "longitude": -117.08722,
        "latitude": 38.06028,
        "temperature": 62.96,
        "wind_speed": null,
        "wind_direction": null,
        "chance_of_precipitation": 0
    },
    {
        "id": "KTPL",
        "name": "Draughon-Miller Central Texas Regional Airport",
        "longitude": -97.4,
        "latitude": 31.15,
        "temperature": 75.02,
        "wind_speed": 15,
        "wind_direction": 140,
        "chance_of_precipitation": 0
    },
    {
        "id": "KTXK",
        "name": "Texarkana Regional-Webb Field",
        "longitude": -93.9875,
        "latitude": 33.45611,
        "temperature": 68,
        "wind_speed": 7,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KU16",
        "name": "Eagle Range",
        "longitude": -113.06667,
        "latitude": 41.05,
        "temperature": 66.02,
        "wind_speed": 10,
        "wind_direction": 170,
        "chance_of_precipitation": 0
    },
    {
        "id": "KVEL",
        "name": "Vernal Airport",
        "longitude": -109.51273,
        "latitude": 40.44295,
        "temperature": 62.06,
        "wind_speed": 7,
        "wind_direction": 200,
        "chance_of_precipitation": 0
    },
    {
        "id": "KVIS",
        "name": "Visalia Municipal Airport",
        "longitude": -119.4,
        "latitude": 36.31667,
        "temperature": 64.94,
        "wind_speed": 5,
        "wind_direction": 120,
        "chance_of_precipitation": 50
    },
    {
        "id": "KVKS",
        "name": "Vicksburg Municipal",
        "longitude": -90.93333,
        "latitude": 32.23333,
        "temperature": 69.80000000000001,
        "wind_speed": 6,
        "wind_direction": 270,
        "chance_of_precipitation": 0
    },
    {
        "id": "KW43",
        "name": "Hulett Municipal Airport",
        "longitude": -104.5678,
        "latitude": 44.6629,
        "temperature": 51.8,
        "wind_speed": 6,
        "wind_direction": 50,
        "chance_of_precipitation": 0
    },
    {
        "id": "KWDG",
        "name": "Enid Woodring Regional Airport",
        "longitude": -97.79111,
        "latitude": 36.37917,
        "temperature": 68,
        "wind_speed": 14,
        "wind_direction": 170,
        "chance_of_precipitation": 20
    },
    {
        "id": "KWJF",
        "name": "General William J. Fox Airfield Airport",
        "longitude": -118.21889,
        "latitude": 34.74083,
        "temperature": 64.94,
        "wind_speed": 18,
        "wind_direction": 220,
        "chance_of_precipitation": 0
    },
    {
        "id": "KWRL",
        "name": "Worland Municipal Airport",
        "longitude": -107.95083,
        "latitude": 43.96583,
        "temperature": 64.94,
        "wind_speed": 8,
        "wind_direction": 360,
        "chance_of_precipitation": 0
    },
    {
        "id": "KXPY",
        "name": "Port Fourchon",
        "longitude": -90.202,
        "latitude": 29.123,
        "temperature": 66.2,
        "wind_speed": 8,
        "wind_direction": 50,
        "chance_of_precipitation": 0
    },
    {
        "id": "KYKN",
        "name": "Chan Gurney Municipal Airport",
        "longitude": -97.38333,
        "latitude": 42.91667,
        "temperature": 68,
        "wind_speed": 10,
        "wind_direction": 320,
        "chance_of_precipitation": 0
    },
    {
        "id": "SANT",
        "name": "SANTAQUIN",
        "longitude": -111.78,
        "latitude": 39.99,
        "temperature": 62.6,
        "wind_speed": 6,
        "wind_direction": 90,
        "chance_of_precipitation": 0
    }
]

"""
    
    static let tomorrowsWeatherData: String = """
[
    {
        "id": "K1D3",
        "name": "PLATTE",
        "longitude": -98.82952,
        "latitude": 43.40332,
        "temperature": 66.4,
        "wind_speed": 11.90468887898,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "K1S5",
        "name": "Sunnyside Municipal Airport",
        "longitude": -119.9704,
        "latitude": 46.3271,
        "temperature": 74.5,
        "wind_speed": 14,
        "wind_direction": 360,
        "chance_of_precipitation": 95
    },
    {
        "id": "K46U",
        "name": "Alpine",
        "longitude": -111.0424,
        "latitude": 43.1846,
        "temperature": 71.8,
        "wind_speed": 11,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "K6S5",
        "name": "HAMILTON",
        "longitude": -114.12554,
        "latitude": 46.25149,
        "temperature": 84.39998901367193,
        "wind_speed": 5,
        "wind_direction": null,
        "chance_of_precipitation": 75
    },
    {
        "id": "K6V4",
        "name": "WALLMUNC",
        "longitude": -102.2546,
        "latitude": 43.99949,
        "temperature": 20,
        "wind_speed": 5,
        "wind_direction": null,
        "chance_of_precipitation": 15
    },
    {
        "id": "K82V",
        "name": "Pine Bluffs Municipal Airport",
        "longitude": -104.1302,
        "latitude": 41.1533,
        "temperature": 88,
        "wind_speed": 8,
        "wind_direction": 80,
        "chance_of_precipitation": 15
    },
    {
        "id": "K8D3",
        "name": "Sisseton Municipal Airport",
        "longitude": -96.99139,
        "latitude": 45.66889,
        "temperature": 70,
        "wind_speed": 17,
        "wind_direction": 310,
        "chance_of_precipitation": 15
    },
    {
        "id": "KADC",
        "name": "Wadena Municipal Airport",
        "longitude": -95.21353,
        "latitude": 46.45022,
        "temperature": 66.4,
        "wind_speed": 15,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KADM",
        "name": "Ardmore Municipal Airport",
        "longitude": -97.01944,
        "latitude": 34.30306,
        "temperature": 93.4,
        "wind_speed": 19,
        "wind_direction": 150,
        "chance_of_precipitation": 15
    },
    {
        "id": "KAFO",
        "name": "Afton WY",
        "longitude": -110.94217,
        "latitude": 42.71133,
        "temperature": 62.8,
        "wind_speed": 10,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KALK",
        "name": "Pioneer Airfield",
        "longitude": -110.4281,
        "latitude": 31.60564,
        "temperature": 98.98,
        "wind_speed": 12,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KALM",
        "name": "Alamogordo-White",
        "longitude": -105.98333,
        "latitude": 32.83333,
        "temperature": 97,
        "wind_speed": 15,
        "wind_direction": 140,
        "chance_of_precipitation": 15
    },
    {
        "id": "KALO",
        "name": "Waterloo Municipal Airport",
        "longitude": -92.40111,
        "latitude": 42.55444,
        "temperature": 86.92,
        "wind_speed": 20,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KATY",
        "name": "Watertown Municipal Airport",
        "longitude": -97.14944,
        "latitude": 44.90472,
        "temperature": 71.08,
        "wind_speed": 15,
        "wind_direction": 330,
        "chance_of_precipitation": 15
    },
    {
        "id": "KAUS",
        "name": "Austin-Bergstrom International Airport",
        "longitude": -97.67987,
        "latitude": 30.18304,
        "temperature": 98.08000000000001,
        "wind_speed": 15,
        "wind_direction": 140,
        "chance_of_precipitation": 15
    },
    {
        "id": "KAWO",
        "name": "Arlington Municipal",
        "longitude": -122.16667,
        "latitude": 48.16667,
        "temperature": 79,
        "wind_speed": 18,
        "wind_direction": 290,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBAC",
        "name": "Valley City",
        "longitude": -98.018,
        "latitude": 46.9412,
        "temperature": 62.8,
        "wind_speed": 26,
        "wind_direction": 310,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBFF",
        "name": "Heilig Field",
        "longitude": -103.58583,
        "latitude": 41.86694,
        "temperature": 91.06,
        "wind_speed": 11,
        "wind_direction": 60,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBFL",
        "name": "Meadows Field Airport",
        "longitude": -119.05667,
        "latitude": 35.43361,
        "temperature": 93.94,
        "wind_speed": 16,
        "wind_direction": 320,
        "chance_of_precipitation": 35
    },
    {
        "id": "KBIE",
        "name": "Beatrice Municipal",
        "longitude": -96.75,
        "latitude": 40.3,
        "temperature": 96.1,
        "wind_speed": 21,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBKX",
        "name": "Brookings Municipal Airport",
        "longitude": -96.81667,
        "latitude": 44.3,
        "temperature": 79,
        "wind_speed": 17,
        "wind_direction": 320,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBLI",
        "name": "Bellingham International Airport",
        "longitude": -122.54064,
        "latitude": 48.79911,
        "temperature": 84.03999999999999,
        "wind_speed": 18,
        "wind_direction": 20,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBPI",
        "name": "Big Piney-Marbleton Airport",
        "longitude": -110.10306,
        "latitude": 42.57889,
        "temperature": 62.980000000000004,
        "wind_speed": 14,
        "wind_direction": 80,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBPK",
        "name": "Baxter County Regional Airport",
        "longitude": -92.47194,
        "latitude": 36.37056,
        "temperature": 86.92,
        "wind_speed": 12,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBRD",
        "name": "Brainerd - Crow Wing County Airport",
        "longitude": -94.12734,
        "latitude": 46.40205,
        "temperature": 79,
        "wind_speed": 17,
        "wind_direction": 250,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBRL",
        "name": "Burlington Regional Airport",
        "longitude": -91.12528,
        "latitude": 40.77278,
        "temperature": 84.03999999999999,
        "wind_speed": 20,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBRO",
        "name": "Brownsville / South Padre Island International Airport",
        "longitude": -97.42306,
        "latitude": 25.91417,
        "temperature": 98.08000000000001,
        "wind_speed": 19,
        "wind_direction": 130,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBTM",
        "name": "Bert Mooney Airport",
        "longitude": -112.4975,
        "latitude": 45.95472,
        "temperature": 62.08,
        "wind_speed": 12,
        "wind_direction": 100,
        "chance_of_precipitation": 95
    },
    {
        "id": "KBVO",
        "name": "Bartlesville Municipal Airport",
        "longitude": -96.02611,
        "latitude": 36.76833,
        "temperature": 91.06,
        "wind_speed": 19,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBVX",
        "name": "Batesville Regional Airport",
        "longitude": -91.65,
        "latitude": 35.73333,
        "temperature": 86.02,
        "wind_speed": 12,
        "wind_direction": 110,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBXK",
        "name": "Buckeye Municipal Airport",
        "longitude": -112.6862,
        "latitude": 33.4204,
        "temperature": 100.6,
        "wind_speed": 10,
        "wind_direction": 160,
        "chance_of_precipitation": 15
    },
    {
        "id": "KBYI",
        "name": "Burley Municipal Airport",
        "longitude": -113.7686,
        "latitude": 42.54525,
        "temperature": 68.92,
        "wind_speed": 9,
        "wind_direction": 290,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCDC",
        "name": "Cedar City Municipal Airport",
        "longitude": -113.09695,
        "latitude": 37.70675,
        "temperature": 80.98,
        "wind_speed": 22,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCLM",
        "name": "Port Angeles Fairchild International Airport",
        "longitude": -123.50661,
        "latitude": 48.12194,
        "temperature": 73.06,
        "wind_speed": 11,
        "wind_direction": 100,
        "chance_of_precipitation": 45
    },
    {
        "id": "KCNM",
        "name": "Cavern City Air Terminal Airport",
        "longitude": -104.26333,
        "latitude": 32.3375,
        "temperature": 102.03999999999999,
        "wind_speed": 23,
        "wind_direction": 130,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCOD",
        "name": "Cody",
        "longitude": -109.01667,
        "latitude": 44.51667,
        "temperature": 73.06,
        "wind_speed": 14,
        "wind_direction": 360,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCRP",
        "name": "Corpus Christi International Airport",
        "longitude": -97.51278,
        "latitude": 27.77306,
        "temperature": 97,
        "wind_speed": 22,
        "wind_direction": 120,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCTB",
        "name": "Cut Bank Municipal Airport",
        "longitude": -112.37611,
        "latitude": 48.60833,
        "temperature": 62.08,
        "wind_speed": 11,
        "wind_direction": 50,
        "chance_of_precipitation": 45
    },
    {
        "id": "KCYS",
        "name": "Cheyenne Airport",
        "longitude": -104.80812,
        "latitude": 41.15789,
        "temperature": 84.94,
        "wind_speed": 12,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KCZZ",
        "name": "Campo",
        "longitude": -116.46833,
        "latitude": 32.62611,
        "temperature": 84.03999999999999,
        "wind_speed": 14,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KD07",
        "name": "Faith",
        "longitude": -102.01917,
        "latitude": 45.03194,
        "temperature": 73.96000000000001,
        "wind_speed": 18,
        "wind_direction": 360,
        "chance_of_precipitation": 15
    },
    {
        "id": "KD57",
        "name": "Glen Ullin Regional Airport",
        "longitude": -101.8602,
        "latitude": 46.8128,
        "temperature": 70,
        "wind_speed": 23,
        "wind_direction": 330,
        "chance_of_precipitation": 15
    },
    {
        "id": "KD60",
        "name": "TIOGA",
        "longitude": -102.9,
        "latitude": 48.38,
        "temperature": 59.2,
        "wind_speed": 16,
        "wind_direction": 320,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDBQ",
        "name": "Dubuque Regional Airport",
        "longitude": -90.70361,
        "latitude": 42.39778,
        "temperature": 80.98,
        "wind_speed": 29,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDDC",
        "name": "Dodge City Regional Airport",
        "longitude": -99.96972,
        "latitude": 37.77278,
        "temperature": 98.08000000000001,
        "wind_speed": 23,
        "wind_direction": 190,
        "chance_of_precipitation": 35
    },
    {
        "id": "KDGW",
        "name": "Converse County Airport",
        "longitude": -105.38194,
        "latitude": 42.79417,
        "temperature": 84.94,
        "wind_speed": 9,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDMN",
        "name": "Deming Municipal Airport",
        "longitude": -107.72056,
        "latitude": 32.26222,
        "temperature": 102.03999999999999,
        "wind_speed": 15,
        "wind_direction": 260,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDPG",
        "name": "Dugway Proving Grounds",
        "longitude": -112.93333,
        "latitude": 40.16667,
        "temperature": 85.48,
        "wind_speed": 15,
        "wind_direction": 160,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDUA",
        "name": "Eaker Field Airport",
        "longitude": -96.39444,
        "latitude": 33.94222,
        "temperature": 91.6,
        "wind_speed": 18,
        "wind_direction": 160,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDUB",
        "name": "Dubois Municipal Airport",
        "longitude": -109.6903,
        "latitude": 43.5484,
        "temperature": 71.8,
        "wind_speed": 18,
        "wind_direction": 290,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDVL",
        "name": "Devils Lake Municipal Airport",
        "longitude": -98.91667,
        "latitude": 48.11667,
        "temperature": 59.019999999999996,
        "wind_speed": 23,
        "wind_direction": 290,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDVN",
        "name": "Davenport Municipal Airport",
        "longitude": -90.59139,
        "latitude": 41.61389,
        "temperature": 82.06,
        "wind_speed": 18,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KDWX",
        "name": "Dixon Airport",
        "longitude": -107.49976,
        "latitude": 41.03704,
        "temperature": 75.04,
        "wind_speed": 17,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KEAR",
        "name": "Kearney Municipal Airport",
        "longitude": -99,
        "latitude": 40.73333,
        "temperature": 95.02,
        "wind_speed": 15,
        "wind_direction": 280,
        "chance_of_precipitation": 15
    },
    {
        "id": "KEAU",
        "name": "Chippewa Valley Regional Airport",
        "longitude": -91.485,
        "latitude": 44.86528,
        "temperature": 77.92,
        "wind_speed": 19,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KECS",
        "name": "Mondell Field",
        "longitude": -104.3179,
        "latitude": 43.8854,
        "temperature": 79,
        "wind_speed": 11,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KEHY",
        "name": "Elk Mountain AWOS",
        "longitude": -106.4594,
        "latitude": 41.7253,
        "temperature": 79,
        "wind_speed": 20,
        "wind_direction": 250,
        "chance_of_precipitation": 15
    },
    {
        "id": "KELD",
        "name": "South Arkansas Regional at Goodwin Field Airport",
        "longitude": -92.81333,
        "latitude": 33.22083,
        "temperature": 89.08000000000001,
        "wind_speed": 11,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KELO",
        "name": "Ely Municipal Airport",
        "longitude": -91.83333,
        "latitude": 47.81667,
        "temperature": 73.6,
        "wind_speed": 19,
        "wind_direction": 230,
        "chance_of_precipitation": 15
    },
    {
        "id": "KELP",
        "name": "El Paso International Airport",
        "longitude": -106.37583,
        "latitude": 31.81111,
        "temperature": 104.92,
        "wind_speed": 15,
        "wind_direction": 250,
        "chance_of_precipitation": 15
    },
    {
        "id": "KEMP",
        "name": "Emporia Municipal Airport",
        "longitude": -96.19389,
        "latitude": 38.32889,
        "temperature": 93.03999999999999,
        "wind_speed": 29,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KEVW",
        "name": "Evanston-Uinta County Burns Field",
        "longitude": -111.03056,
        "latitude": 41.27306,
        "temperature": 68.02,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFAM",
        "name": "Farmington Airport",
        "longitude": -90.43333,
        "latitude": 37.76667,
        "temperature": 84.03999999999999,
        "wind_speed": 19,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFBR",
        "name": "Fort Bridger WY",
        "longitude": -110.40683,
        "latitude": 41.392,
        "temperature": 61,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFFM",
        "name": "Fergus Falls Municipal Airport-Einar Mickel",
        "longitude": -96.15338,
        "latitude": 46.28655,
        "temperature": 64.6,
        "wind_speed": 13,
        "wind_direction": 280,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFNL",
        "name": "Fort Collins-Loveland Municipal Airport",
        "longitude": -105.01667,
        "latitude": 40.45,
        "temperature": 91.96000000000001,
        "wind_speed": 16,
        "wind_direction": 130,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFOD",
        "name": "Fort Dodge",
        "longitude": -94.18333,
        "latitude": 42.55,
        "temperature": 89.08000000000001,
        "wind_speed": 19,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFOE",
        "name": "Forbes Field",
        "longitude": -95.65056,
        "latitude": 38.94139,
        "temperature": 93.03999999999999,
        "wind_speed": 24,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KFSM",
        "name": "Fort Smith Regional Airport",
        "longitude": -94.365,
        "latitude": 35.33361,
        "temperature": 91.06,
        "wind_speed": 9,
        "wind_direction": 150,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGAF",
        "name": "GRAFTON",
        "longitude": -97.37,
        "latitude": 48.4,
        "temperature": 61,
        "wind_speed": 21,
        "wind_direction": 310,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGCK",
        "name": "Garden City Regional Airport",
        "longitude": -100.72444,
        "latitude": 37.9275,
        "temperature": 98.98,
        "wind_speed": 14,
        "wind_direction": 170,
        "chance_of_precipitation": 35
    },
    {
        "id": "KGEY",
        "name": "South Big Horn County Airport",
        "longitude": -108.0752,
        "latitude": 44.5174,
        "temperature": 82.96000000000001,
        "wind_speed": 10,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGLH",
        "name": "Mid Delta Regional Airport",
        "longitude": -90.98556,
        "latitude": 33.48278,
        "temperature": 84.94,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGNT",
        "name": "Grants-Milan Municipal Airport",
        "longitude": -107.90222,
        "latitude": 35.16528,
        "temperature": 91.06,
        "wind_speed": 11,
        "wind_direction": 230,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGXA",
        "name": "Gray Butte Field Airport",
        "longitude": -117.6704,
        "latitude": 34.5666,
        "temperature": 84.4,
        "wind_speed": 24,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KGXF",
        "name": "Gila Bend Air Force Auxiliary Field",
        "longitude": -112.72,
        "latitude": 32.8875,
        "temperature": 101.5,
        "wind_speed": 10,
        "wind_direction": 300,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHDC",
        "name": "Hammond Municipal Airport",
        "longitude": -90.4175,
        "latitude": 30.52083,
        "temperature": 97,
        "wind_speed": 10,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHEZ",
        "name": "Hardy-Anders Field Natchez-Adams County Airport",
        "longitude": -91.29724,
        "latitude": 31.61593,
        "temperature": 89.98,
        "wind_speed": 10,
        "wind_direction": 290,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHIB",
        "name": "Chisholm-Hibbing Airport",
        "longitude": -92.83245,
        "latitude": 47.38039,
        "temperature": 77.92,
        "wind_speed": 16,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHLN",
        "name": "Helena Regional Airport",
        "longitude": -111.9892,
        "latitude": 46.60445,
        "temperature": 59.019999999999996,
        "wind_speed": 8,
        "wind_direction": 260,
        "chance_of_precipitation": 95
    },
    {
        "id": "KHON",
        "name": "Huron Regional Airport",
        "longitude": -98.22833,
        "latitude": 44.38806,
        "temperature": 75.94,
        "wind_speed": 17,
        "wind_direction": 340,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHOT",
        "name": "Memorial Field Airport",
        "longitude": -93.09611,
        "latitude": 34.47806,
        "temperature": 86.92,
        "wind_speed": 9,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHRO",
        "name": "Boone County Airport",
        "longitude": -93.15472,
        "latitude": 36.26167,
        "temperature": 88,
        "wind_speed": 15,
        "wind_direction": 140,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHUM",
        "name": "Houma-Terrebonne",
        "longitude": -90.66667,
        "latitude": 29.56667,
        "temperature": 91.6,
        "wind_speed": 16,
        "wind_direction": 80,
        "chance_of_precipitation": 15
    },
    {
        "id": "KHUT",
        "name": "Hutchinson Municipal Airport",
        "longitude": -97.86056,
        "latitude": 38.06806,
        "temperature": 93.03999999999999,
        "wind_speed": 22,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KIEN",
        "name": "Pine Ridge Airport",
        "longitude": -102.52306,
        "latitude": 43.02556,
        "temperature": 84.94,
        "wind_speed": 12,
        "wind_direction": 50,
        "chance_of_precipitation": 15
    },
    {
        "id": "KIGM",
        "name": "Kingman Airport",
        "longitude": -113.93306,
        "latitude": 35.25778,
        "temperature": 91.96000000000001,
        "wind_speed": 21,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KINS",
        "name": "Nellis AFB - Indian Springs Auxiliary Airfield",
        "longitude": -115.69008,
        "latitude": 36.58573,
        "temperature": 95.2,
        "wind_speed": 17,
        "wind_direction": 40,
        "chance_of_precipitation": 15
    },
    {
        "id": "KINW",
        "name": "Winslow Municipal Airport",
        "longitude": -110.72083,
        "latitude": 35.02806,
        "temperature": 93.94,
        "wind_speed": 17,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KJAC",
        "name": "Jackson Hole Airport",
        "longitude": -110.73333,
        "latitude": 43.6,
        "temperature": 64.06,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KJBR",
        "name": "Jonesboro Municipal Airport",
        "longitude": -90.64306,
        "latitude": 35.83722,
        "temperature": 84.03999999999999,
        "wind_speed": 12,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KJLN",
        "name": "Joplin Regional Airport",
        "longitude": -94.50056,
        "latitude": 37.15611,
        "temperature": 89.08000000000001,
        "wind_speed": 22,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KKLS",
        "name": "Kelso-Longview Airport",
        "longitude": -122.9,
        "latitude": 46.11667,
        "temperature": 70,
        "wind_speed": 8,
        "wind_direction": 170,
        "chance_of_precipitation": 95
    },
    {
        "id": "KL35",
        "name": "Big Bear City Airport",
        "longitude": -116.856,
        "latitude": 34.2638,
        "temperature": 71.8,
        "wind_speed": 13,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLAW",
        "name": "Lawton Municipal Airport",
        "longitude": -98.41667,
        "latitude": 34.5575,
        "temperature": 93.03999999999999,
        "wind_speed": 22,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLBB",
        "name": "Lubbock International Airport",
        "longitude": -101.82139,
        "latitude": 33.6675,
        "temperature": 98.98,
        "wind_speed": 20,
        "wind_direction": 180,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLFT",
        "name": "Lafayette Regional Airport",
        "longitude": -91.99306,
        "latitude": 30.20222,
        "temperature": 93.94,
        "wind_speed": 10,
        "wind_direction": 340,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLGU",
        "name": "Logan-Cache Airport",
        "longitude": -111.85187,
        "latitude": 41.78652,
        "temperature": 80.98,
        "wind_speed": 16,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLMT",
        "name": "Klamath Falls International Airport",
        "longitude": -121.72548,
        "latitude": 42.14703,
        "temperature": 68.02,
        "wind_speed": 22,
        "wind_direction": 170,
        "chance_of_precipitation": 105
    },
    {
        "id": "KLNK",
        "name": "Lincoln Municipal Airport",
        "longitude": -96.76444,
        "latitude": 40.83111,
        "temperature": 93.94,
        "wind_speed": 21,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLNR",
        "name": "Lone Rock Tri-County Regional Airport",
        "longitude": -90.18735,
        "latitude": 43.21108,
        "temperature": 82.96000000000001,
        "wind_speed": 22,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLSE",
        "name": "La Crosse - La Crosse Regional Airport",
        "longitude": -91.25667,
        "latitude": 43.87944,
        "temperature": 86.02,
        "wind_speed": 21,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLVM",
        "name": "Mission Field Airport",
        "longitude": -110.44833,
        "latitude": 45.69944,
        "temperature": 59.92,
        "wind_speed": 16,
        "wind_direction": 110,
        "chance_of_precipitation": 65
    },
    {
        "id": "KLVS",
        "name": "Las Vegas Municipal Airport",
        "longitude": -105.1425,
        "latitude": 35.65417,
        "temperature": 91.06,
        "wind_speed": 23,
        "wind_direction": 250,
        "chance_of_precipitation": 15
    },
    {
        "id": "KLWT",
        "name": "Lewistown Municipal Airport",
        "longitude": -109.46639,
        "latitude": 47.04917,
        "temperature": 59.019999999999996,
        "wind_speed": 16,
        "wind_direction": 30,
        "chance_of_precipitation": 75
    },
    {
        "id": "KLXN",
        "name": "Jim Kelly Field Airport",
        "longitude": -99.77722,
        "latitude": 40.79111,
        "temperature": 95.56,
        "wind_speed": 13,
        "wind_direction": 300,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMCB",
        "name": "McComb / Pike County / John E Lewis Field Airport",
        "longitude": -90.47194,
        "latitude": 31.17833,
        "temperature": 93.03999999999999,
        "wind_speed": 8,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMCW",
        "name": "Mason City Municipal Airport",
        "longitude": -93.33139,
        "latitude": 43.15778,
        "temperature": 86.02,
        "wind_speed": 20,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMEV",
        "name": "Minden-Tahoe Airport",
        "longitude": -119.75,
        "latitude": 38.9963,
        "temperature": 73.6,
        "wind_speed": 25,
        "wind_direction": 150,
        "chance_of_precipitation": 95
    },
    {
        "id": "KMGG",
        "name": "Maple Lake Municipal Airport",
        "longitude": -93.98959,
        "latitude": 45.23535,
        "temperature": 80.62,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMHE",
        "name": "Mitchell Municipal Airport",
        "longitude": -98.03333,
        "latitude": 43.76667,
        "temperature": 79,
        "wind_speed": 18,
        "wind_direction": 340,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMHK",
        "name": "Manhattan Municipal Airport",
        "longitude": -96.67778,
        "latitude": 39.13528,
        "temperature": 95.02,
        "wind_speed": 22,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMIW",
        "name": "Marshalltown Municipal Airport",
        "longitude": -92.91611,
        "latitude": 42.11056,
        "temperature": 86.92,
        "wind_speed": 25,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMKO",
        "name": "Davis Field",
        "longitude": -95.35972,
        "latitude": 35.65694,
        "temperature": 89.08000000000001,
        "wind_speed": 20,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMKT",
        "name": "Mankato Regional Airport",
        "longitude": -93.91667,
        "latitude": 44.21667,
        "temperature": 84.03999999999999,
        "wind_speed": 17,
        "wind_direction": 260,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMLC",
        "name": "McAlester Regional Airport",
        "longitude": -95.78306,
        "latitude": 34.88222,
        "temperature": 89.98,
        "wind_speed": 16,
        "wind_direction": 160,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMLS",
        "name": "Frank Wiley Field Airport",
        "longitude": -105.88639,
        "latitude": 46.42806,
        "temperature": 68.92,
        "wind_speed": 11,
        "wind_direction": 340,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMRY",
        "name": "Monterey Peninsula Airport",
        "longitude": -121.8475,
        "latitude": 36.59056,
        "temperature": 82.96000000000001,
        "wind_speed": 14,
        "wind_direction": 250,
        "chance_of_precipitation": 95
    },
    {
        "id": "KMSY",
        "name": "New Orleans International Airport",
        "longitude": -90.25083,
        "latitude": 29.99278,
        "temperature": 93.03999999999999,
        "wind_speed": 13,
        "wind_direction": 90,
        "chance_of_precipitation": 15
    },
    {
        "id": "KMUO",
        "name": "Mountain Home Air Force Base",
        "longitude": -115.86667,
        "latitude": 43.05,
        "temperature": 81.7,
        "wind_speed": 12,
        "wind_direction": 80,
        "chance_of_precipitation": 75
    },
    {
        "id": "KMWH",
        "name": "Grant County Airport",
        "longitude": -119.31451,
        "latitude": 47.19299,
        "temperature": 77.02,
        "wind_speed": 14,
        "wind_direction": 30,
        "chance_of_precipitation": 75
    },
    {
        "id": "KN60",
        "name": "Garrison",
        "longitude": -101.43944,
        "latitude": 47.64583,
        "temperature": 64.06,
        "wind_speed": 28,
        "wind_direction": 330,
        "chance_of_precipitation": 15
    },
    {
        "id": "KNFG",
        "name": "Marine Corps Air Station",
        "longitude": -117.35389,
        "latitude": 33.30472,
        "temperature": 84.03999999999999,
        "wind_speed": 17,
        "wind_direction": 260,
        "chance_of_precipitation": 15
    },
    {
        "id": "KNID",
        "name": "Naval Air Facility",
        "longitude": -117.69,
        "latitude": 35.68639,
        "temperature": 93.03999999999999,
        "wind_speed": 23,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KNSI",
        "name": "San Nicholas Island",
        "longitude": -119.45278,
        "latitude": 33.23472,
        "temperature": 86.02,
        "wind_speed": 12,
        "wind_direction": 240,
        "chance_of_precipitation": 35
    },
    {
        "id": "KNUC",
        "name": "San Clemente Island NALF",
        "longitude": -118.58266,
        "latitude": 33.0218,
        "temperature": 86.02,
        "wind_speed": 10,
        "wind_direction": 290,
        "chance_of_precipitation": 35
    },
    {
        "id": "KNXP",
        "name": "Marine Corps Air-Ground Combat Center",
        "longitude": -116.145,
        "latitude": 34.29444,
        "temperature": 93.94,
        "wind_speed": 10,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KNYL",
        "name": "Marine Corps Air Station",
        "longitude": -114.59306,
        "latitude": 32.65944,
        "temperature": 104.02,
        "wind_speed": 12,
        "wind_direction": 250,
        "chance_of_precipitation": 15
    },
    {
        "id": "KOFK",
        "name": "Stefan Memorial Airport",
        "longitude": -97.43694,
        "latitude": 41.98056,
        "temperature": 20,
        "wind_speed": 14,
        "wind_direction": 230,
        "chance_of_precipitation": 15
    },
    {
        "id": "KOLF",
        "name": "Clayton Airport",
        "longitude": -105.57722,
        "latitude": 48.09444,
        "temperature": 66.94,
        "wind_speed": 14,
        "wind_direction": 350,
        "chance_of_precipitation": 15
    },
    {
        "id": "KOLU",
        "name": "Columbus Municipal Airport",
        "longitude": -97.33333,
        "latitude": 41.45,
        "temperature": 89.98,
        "wind_speed": 15,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KORC",
        "name": "Orange City",
        "longitude": -96.06667,
        "latitude": 42.98333,
        "temperature": 32.2,
        "wind_speed": 8,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KOTM",
        "name": "Ottumwa Industrial Airport",
        "longitude": -92.44806,
        "latitude": 41.10667,
        "temperature": 86.92,
        "wind_speed": 25,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KOXR",
        "name": "Oxnard Airport",
        "longitude": -119.20306,
        "latitude": 34.20056,
        "temperature": 84.94,
        "wind_speed": 11,
        "wind_direction": 200,
        "chance_of_precipitation": 35
    },
    {
        "id": "KP60",
        "name": "Yellowstone Lake",
        "longitude": -110.42111,
        "latitude": 44.54444,
        "temperature": 66.03999999999999,
        "wind_speed": 11,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPBF",
        "name": "Grider Field Airport",
        "longitude": -91.93472,
        "latitude": 34.175,
        "temperature": 84.94,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPDT",
        "name": "Eastern Oregon Regional At Pendleton Airport",
        "longitude": -118.83417,
        "latitude": 45.69833,
        "temperature": 66.03999999999999,
        "wind_speed": 12,
        "wind_direction": 320,
        "chance_of_precipitation": 105
    },
    {
        "id": "KPNC",
        "name": "Ponca City Municipal Airport",
        "longitude": -97.09972,
        "latitude": 36.73056,
        "temperature": 91.96000000000001,
        "wind_speed": 19,
        "wind_direction": 170,
        "chance_of_precipitation": 35
    },
    {
        "id": "KPOC",
        "name": "La Verne / Brackett",
        "longitude": -117.78333,
        "latitude": 34.1,
        "temperature": 88,
        "wind_speed": 19,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPOE",
        "name": "Polk AAF Ft Polk",
        "longitude": -93.19389,
        "latitude": 31.05,
        "temperature": 92.32,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPRC",
        "name": "Love Field",
        "longitude": -112.42222,
        "latitude": 34.64917,
        "temperature": 88,
        "wind_speed": 19,
        "wind_direction": 230,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPSP",
        "name": "Palm Springs Regional Airport",
        "longitude": -116.50431,
        "latitude": 33.82219,
        "temperature": 100.96000000000001,
        "wind_speed": 9,
        "wind_direction": 260,
        "chance_of_precipitation": 15
    },
    {
        "id": "KPTN",
        "name": "Patterson Memorial",
        "longitude": -91.33333,
        "latitude": 29.71667,
        "temperature": 91.96000000000001,
        "wind_speed": 13,
        "wind_direction": 60,
        "chance_of_precipitation": 15
    },
    {
        "id": "KRBG",
        "name": "Roseburg Regional Airport",
        "longitude": -123.35611,
        "latitude": 43.23389,
        "temperature": 77.92,
        "wind_speed": 14,
        "wind_direction": 260,
        "chance_of_precipitation": 105
    },
    {
        "id": "KRIL",
        "name": "Garfield County Regional Airport",
        "longitude": -107.72722,
        "latitude": 39.525,
        "temperature": 89.08000000000001,
        "wind_speed": 16,
        "wind_direction": 240,
        "chance_of_precipitation": 15
    },
    {
        "id": "KRIV",
        "name": "Riverside / March Air Force Base",
        "longitude": -117.25,
        "latitude": 33.9,
        "temperature": 87.64,
        "wind_speed": 13,
        "wind_direction": 280,
        "chance_of_precipitation": 15
    },
    {
        "id": "KRLD",
        "name": "Richland Airport",
        "longitude": -119.3058,
        "latitude": 46.30859,
        "temperature": 77.38,
        "wind_speed": 13,
        "wind_direction": 10,
        "chance_of_precipitation": 85
    },
    {
        "id": "KRST",
        "name": "Rochester International Airport",
        "longitude": -92.49167,
        "latitude": 43.90417,
        "temperature": 79,
        "wind_speed": 19,
        "wind_direction": 210,
        "chance_of_precipitation": 15
    },
    {
        "id": "KRUE",
        "name": "Russellville Regional Airport",
        "longitude": -93.09333,
        "latitude": 35.25889,
        "temperature": 89.08000000000001,
        "wind_speed": 12,
        "wind_direction": 150,
        "chance_of_precipitation": 15
    },
    {
        "id": "KS25",
        "name": "WATFORD CITY",
        "longitude": -103.25,
        "latitude": 47.8,
        "temperature": 62.8,
        "wind_speed": 19,
        "wind_direction": 320,
        "chance_of_precipitation": 15
    },
    {
        "id": "KS34",
        "name": "PLAINS",
        "longitude": -114.90708,
        "latitude": 47.47355,
        "temperature": 57.4,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 45
    },
    {
        "id": "KS59",
        "name": "Libby",
        "longitude": -115.49,
        "latitude": 48.284,
        "temperature": 50.2,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSAF",
        "name": "Santa Fe County Municipal Airport",
        "longitude": -106.09573,
        "latitude": 35.61097,
        "temperature": 93.03999999999999,
        "wind_speed": 19,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSBA",
        "name": "Santa Barbara Municipal Airport",
        "longitude": -119.84361,
        "latitude": 34.42611,
        "temperature": 82.96000000000001,
        "wind_speed": 10,
        "wind_direction": 200,
        "chance_of_precipitation": 65
    },
    {
        "id": "KSCK",
        "name": "Stockton Metropolitan Airport",
        "longitude": -121.22361,
        "latitude": 37.88972,
        "temperature": 80.98,
        "wind_speed": 23,
        "wind_direction": 210,
        "chance_of_precipitation": 105
    },
    {
        "id": "KSDY",
        "name": "Sidney-Richland",
        "longitude": -104.2,
        "latitude": 47.7,
        "temperature": 66.03999999999999,
        "wind_speed": 19,
        "wind_direction": 330,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSJN",
        "name": "St. Johns Industrial Airpark",
        "longitude": -109.37917,
        "latitude": 34.51833,
        "temperature": 89.98,
        "wind_speed": 16,
        "wind_direction": 260,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSLE",
        "name": "McNary Field",
        "longitude": -122.995,
        "latitude": 44.90778,
        "temperature": 73.96000000000001,
        "wind_speed": 9,
        "wind_direction": 350,
        "chance_of_precipitation": 105
    },
    {
        "id": "KSLN",
        "name": "Salina Municipal Airport",
        "longitude": -97.64417,
        "latitude": 38.78,
        "temperature": 93.94,
        "wind_speed": 26,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSMF",
        "name": "Sacramento International Airport",
        "longitude": -121.59479,
        "latitude": 38.70071,
        "temperature": 77.02,
        "wind_speed": 20,
        "wind_direction": 170,
        "chance_of_precipitation": 95
    },
    {
        "id": "KSMX",
        "name": "Santa Maria Public Airport",
        "longitude": -120.44861,
        "latitude": 34.89944,
        "temperature": 88,
        "wind_speed": 17,
        "wind_direction": 230,
        "chance_of_precipitation": 85
    },
    {
        "id": "KSTJ",
        "name": "Rosecrans Memorial Airport",
        "longitude": -94.90917,
        "latitude": 39.76806,
        "temperature": 89.98,
        "wind_speed": 21,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSTS",
        "name": "Santa Rosa Sonoma County Airport",
        "longitude": -122.81667,
        "latitude": 38.5,
        "temperature": 79,
        "wind_speed": 17,
        "wind_direction": 240,
        "chance_of_precipitation": 55
    },
    {
        "id": "KSUN",
        "name": "Friedman Memorial Airport",
        "longitude": -114.3,
        "latitude": 43.5,
        "temperature": 68.2,
        "wind_speed": 5,
        "wind_direction": 0,
        "chance_of_precipitation": 45
    },
    {
        "id": "KSVC",
        "name": "Silver City / Grant",
        "longitude": -108.15,
        "latitude": 32.63333,
        "temperature": 93.58000000000001,
        "wind_speed": 12,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSWO",
        "name": "Stillwater Regional Airport",
        "longitude": -97.08917,
        "latitude": 36.16222,
        "temperature": 93.03999999999999,
        "wind_speed": 17,
        "wind_direction": 190,
        "chance_of_precipitation": 15
    },
    {
        "id": "KSZT",
        "name": "Sandpoint Airport",
        "longitude": -116.56,
        "latitude": 48.29944,
        "temperature": 71.8,
        "wind_speed": 16,
        "wind_direction": 20,
        "chance_of_precipitation": 15
    },
    {
        "id": "KTPH",
        "name": "Tonopah Airport",
        "longitude": -117.08722,
        "latitude": 38.06028,
        "temperature": 82.96000000000001,
        "wind_speed": 5,
        "wind_direction": null,
        "chance_of_precipitation": 15
    },
    {
        "id": "KTPL",
        "name": "Draughon-Miller Central Texas Regional Airport",
        "longitude": -97.4,
        "latitude": 31.15,
        "temperature": 95.02,
        "wind_speed": 20,
        "wind_direction": 140,
        "chance_of_precipitation": 15
    },
    {
        "id": "KTXK",
        "name": "Texarkana Regional-Webb Field",
        "longitude": -93.9875,
        "latitude": 33.45611,
        "temperature": 88,
        "wind_speed": 12,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KU16",
        "name": "Eagle Range",
        "longitude": -113.06667,
        "latitude": 41.05,
        "temperature": 86.02,
        "wind_speed": 15,
        "wind_direction": 170,
        "chance_of_precipitation": 15
    },
    {
        "id": "KVEL",
        "name": "Vernal Airport",
        "longitude": -109.51273,
        "latitude": 40.44295,
        "temperature": 82.06,
        "wind_speed": 12,
        "wind_direction": 200,
        "chance_of_precipitation": 15
    },
    {
        "id": "KVIS",
        "name": "Visalia Municipal Airport",
        "longitude": -119.4,
        "latitude": 36.31667,
        "temperature": 84.94,
        "wind_speed": 10,
        "wind_direction": 120,
        "chance_of_precipitation": 65
    },
    {
        "id": "KVKS",
        "name": "Vicksburg Municipal",
        "longitude": -90.93333,
        "latitude": 32.23333,
        "temperature": 89.80000000000001,
        "wind_speed": 11,
        "wind_direction": 270,
        "chance_of_precipitation": 15
    },
    {
        "id": "KW43",
        "name": "Hulett Municipal Airport",
        "longitude": -104.5678,
        "latitude": 44.6629,
        "temperature": 71.8,
        "wind_speed": 11,
        "wind_direction": 50,
        "chance_of_precipitation": 15
    },
    {
        "id": "KWDG",
        "name": "Enid Woodring Regional Airport",
        "longitude": -97.79111,
        "latitude": 36.37917,
        "temperature": 88,
        "wind_speed": 19,
        "wind_direction": 170,
        "chance_of_precipitation": 35
    },
    {
        "id": "KWJF",
        "name": "General William J. Fox Airfield Airport",
        "longitude": -118.21889,
        "latitude": 34.74083,
        "temperature": 84.94,
        "wind_speed": 23,
        "wind_direction": 220,
        "chance_of_precipitation": 15
    },
    {
        "id": "KWRL",
        "name": "Worland Municipal Airport",
        "longitude": -107.95083,
        "latitude": 43.96583,
        "temperature": 84.94,
        "wind_speed": 13,
        "wind_direction": 360,
        "chance_of_precipitation": 15
    },
    {
        "id": "KXPY",
        "name": "Port Fourchon",
        "longitude": -90.202,
        "latitude": 29.123,
        "temperature": 86.2,
        "wind_speed": 13,
        "wind_direction": 50,
        "chance_of_precipitation": 15
    },
    {
        "id": "KYKN",
        "name": "Chan Gurney Municipal Airport",
        "longitude": -97.38333,
        "latitude": 42.91667,
        "temperature": 88,
        "wind_speed": 15,
        "wind_direction": 320,
        "chance_of_precipitation": 15
    },
    {
        "id": "SANT",
        "name": "SANTAQUIN",
        "longitude": -111.78,
        "latitude": 39.99,
        "temperature": 82.6,
        "wind_speed": 11,
        "wind_direction": 90,
        "chance_of_precipitation": 15
    }
]

"""
}

