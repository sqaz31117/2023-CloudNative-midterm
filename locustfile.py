from locust import HttpUser, task, between

class MyUser(HttpUser):
    @task
    def my_task(self):
        self.client.get('/')
    wait_time = between(5, 15)
