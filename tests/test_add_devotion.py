from flask_jwt_extended import create_access_token


def test_should_add_return_one_jafung(app, client):
    client.post(
        "/login",
        data={
            "username": "dessywaiman",
            "password": "password",
        },
    )
    TITLE_DEVOTION = "Judul_kejadian_1"
    CONTENT_DEVOTION = 'Content_kejadian_1'
    create_staff_response = client.post(
        "/add-data-devotion",
        data={
            "title": TITLE_DEVOTION,
            "content": CONTENT_DEVOTION,
            "book_name": 'kejadian',
            "chapter_number": '1'
        },
        follow_redirects=True
    )

    # / load - data - devotion
    assert 200 is create_staff_response.status_code

    get_data_devotion_response = client.get(
        "/load-data-devotion",
    )
    assert 200 is get_data_devotion_response.status_code
    assert 1 == len(get_data_devotion_response.get_json()["data"])
    data = get_data_devotion_response.get_json()["data"][0]
    assert TITLE_DEVOTION == data["title"]
    assert CONTENT_DEVOTION == data["content"]
