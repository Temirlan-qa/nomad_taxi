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
   "id": 2,
        "start_point": "Тест",
        "end_point": "Тестқой",
        "price": 300,
        "pay_method": {
            "by_cash": 300,
            "by_bonus": 0
        },
        "phone": "+77476133356",
        "comment": null,
        "status": "accepted",
        "town_id": '8',
        "created_at": "2021-12-04 16:59:49",
        "points": []
};
