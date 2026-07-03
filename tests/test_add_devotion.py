from flask_jwt_extended import create_access_token


def test_should_add_return_one_jafung(app, client):
    with app.app_context():
        access_token = create_access_token(identity="testuser")

        create_staff_response = client.post(
            "/add-data-devotion",
            headers={"Authorization": f"Bearer {access_token}"},
            data={
                "title": "Judul",
                "content": 'content',
                "book_name": 'book_name',
                "number": 'chapter_number'
            }
        )
