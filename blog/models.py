from django.db import models
from django.contrib.auth.models import User
from django.contrib.contenttypes.fields import GenericRelation
from django.urls import reverse
from django.contrib.contenttypes.models import ContentType
from ckeditor_uploader.fields import RichTextUploadingField
from read_statistics.models import ReadNumExpandMethod, ReadDetail


class BlogType(models.Model):
    type_name = models.CharField(verbose_name='博客分类', max_length=15)

    def __str__(self):
        return self.type_name

    
class Blog(models.Model, ReadNumExpandMethod):
    title = models.CharField(verbose_name='标题', max_length=50)
    blog_type = models.ForeignKey(BlogType, verbose_name='博客分类', on_delete=models.CASCADE)
    content = RichTextUploadingField()
    author = models.ForeignKey(User, verbose_name='作者', on_delete=models.CASCADE)
    read_details = GenericRelation(ReadDetail)
    created_time = models.DateTimeField(verbose_name='创建日期', auto_now_add=True)
    last_updated_time = models.DateTimeField(verbose_name='更新日期', auto_now_add=True)

    def get_url(self):
        return reverse('blog_detail', kwargs={'blog_pk': self.pk})

    def get_email(self):
        return self.author.email

    def __str__(self):
        return "<Blog: %s>" % self.title

    class Meta:
        ordering = ['-created_time']
