part of 'orders_remote_impl.dart';

final Map<String, dynamic> _mockData = {
  "status": "success",
  "data": [
    {
      "id": 1,
      "start_point": "Location A",
      "end_point": "Location B",
      "price": 300,
      "comment": "Comment 1",
      "status": "in_process",
      "has_route": false,
    },
    {
      "id": 2,
      "start_point": "Location C",
      "end_point": "Location D",
      "price": 200,
      "comment": "Comment 2",
      "status": "completed",
      "has_route": true,
    },
    {
      "id": 3,
      "start_point": "Location E",
      "end_point": "Location F",
      "price": 500,
      "comment": "Comment 3",
      "status": "cancelled",
      "has_route": false,
    },
    {
      "id": 4,
      "start_point": "Location G",
      "end_point": "Location H",
      "price": 800,
      "comment": "Comment 4",
      "status": "in_process",
      "has_route": true,
    },
    {
      "id": 5,
      "start_point": "Location I",
      "end_point": "Location J",
      "price": 10,
      "comment": "Comment 5",
      "status": "completed",
      "has_route": false,
    },
  ]
};

final Map<String, dynamic> _mockAcceptOrder = 
  {
    "id": 1,
    "start_point": "123 Main St",
    "end_point": "456 Elm St",
    "price": 500,
    "comment": "Handle with care",
    "status": "in_process",
    "has_route": true,
    "created_at": "2024-06-13T10:00:00Z",
    "pay_method": {"id": "pay1", "by_cash": 300, "by_bonus": 200},
    "waiting_time": 15,
    "partner": {
      "id": 101,
      "first_name": "John",
      "last_name": "Doe",
      "car_model": "Toyota Prius",
      "car_number": "XYZ 1234",
      "town_id": 5,
      "status": "active",
      "finance": {"balance": 1000, "bonus": 150}
    },
    "phone": "+1234567890",
    "town_id": 10,
    "points": [
      {
        "lat": 37.7749,
        "lng": -122.4194,
        "title": "Pickup Point",
      },
      {
        "lat": 37.8044,
        "lng": -122.2711,
        "title": "Dropoff Point",
      }
    ]
};
