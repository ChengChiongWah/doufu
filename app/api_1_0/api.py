from flask_restful import reqparse, Resource, abort


TODOS = {
    'todo1': {'task': 'build an API'},
    'todo2': {'task': 'building'},
    'todo3': {'task': 'work done'},
    }


def abort_if_todo_doesnt_exist(todo_id):
    if todo_id not in TODOS:
        abort(404, message='Todo {} does not exist'.format(todo_id))

parser = reqparse.RequestParser()
parser.add_argument('task', type=str)


class Todo(Resource):
    def get(self, todo_id):
        abort_if_todo_doesnt_exist(todo_id)
        return TODOS[todo_id]

    def delete(self, todo_id):
        abort_if_todo_doesnt_exist(todo_id)
        del TODOS[todo_id]
        return '', 204

    def put(self, todo_id):
        args = parser.parse_args()
        task = {'task': args['task']}
        TODOS[todo_id] = task
        return task, 201


class TodoList(Resource):
    def get(self):
        return TODOS

    def post(self):
        args = parser.parse_args()
        todo_id = int(max(TODO.keys()).lstrip('todo')) + 1
        TODOS[todo_id] = {'task': args['task']}
        return TODO[todo_id], 201

