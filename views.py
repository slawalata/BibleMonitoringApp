import hashlib

from flask import render_template, session, redirect, request

from models.admin import Admin


def init_page_routes(app, auth):
    @app.errorhandler(404)
    def page_not_found(e):
        return render_template("notfound.html")

    @app.errorhandler(500)
    def error(e):
        return render_template("error.html")

    @app.errorhandler(403)
    def forbidden(e):
        return render_template("forbidden.html")

    @app.route('/login', methods=['GET', 'POST'])
    def loginPage():
        respone = None
        if request.method == 'GET':
            respone = render_template('login.html')
        else:
            respone = {'status': False, 'msg': 'Internal server error!', 'code': 500}
            username = request.form.get('username', '')
            rawPassword = request.form.get('password', '')
            admin = Admin()

            if username and rawPassword:
                password = hashlib.md5(rawPassword.encode()).hexdigest()
                response = admin.check_credential(username, password)
                if response['status'] and response['data'] != {}:
                    session['username'] = username
                    session['name'] = response['data']['admin_name']
                    session['phonenumber'] = response['data']['phone']
                    # session['group'] = response['data']['id_group']
                    respone = redirect('/')
                else:
                    respone['msg'] = 'Wrong username or password!'
                    respone['code'] = 401
                    respone = render_template('login.html', **respone)
            else:
                respone['msg'] = 'Wrong username/password'
                respone['code'] = 401
                respone = render_template('login.html', **respone)
        return respone

    @app.route('/logout')
    @auth
    def logout(*args, **kwargs):
        session.clear()
        return redirect('/')

    @app.route('/')
    @auth
    def dashboard(*args, **kwargs):
        return render_template('dashboard.html', **kwargs)

    @app.route('/report')
    @auth
    def report(*args, **kwargs):
        return render_template('report.html', **kwargs)

    @app.route('/devotion')
    @auth
    def devotion(*args, **kwargs):
        return render_template('devotion.html', **kwargs)

    @app.route('/member')
    @auth
    def member(*args, **kwargs):
        return render_template('member.html', **kwargs)

    @app.route('/group')
    @auth
    def group(*args, **kwargs):
        return render_template('group.html', **kwargs)

    @app.route('/church')
    @auth
    def church(*args, **kwargs):
        return render_template('church.html', **kwargs)

    @app.route('/admin')
    @auth
    def admin(*args, **kwargs):
        return render_template('admin.html', **kwargs)

