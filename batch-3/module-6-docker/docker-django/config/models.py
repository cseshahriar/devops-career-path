class Todo(models.Model):

    class Meta:
        verbose_name = "todo"
        verbose_name_plural = "todos"

    def __str__(self):
        return self.name
