# Generated by Django 3.0.2 on 2020-02-01 14:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0003_portfolio'),
    ]

    operations = [
        migrations.RenameField(
            model_name='portfolio',
            old_name='portfolio_desc',
            new_name='portfolioDesc',
        ),
        migrations.RenameField(
            model_name='portfolio',
            old_name='portfolio_img',
            new_name='portfolioImg',
        ),
        migrations.RenameField(
            model_name='portfolio',
            old_name='portfolio_para',
            new_name='portfolioPara',
        ),
    ]
