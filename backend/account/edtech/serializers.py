from rest_framework import serializers
from .models  import*

class EdtechSerializer(serializers.ModelSerializer):
    class Meta():
        model = Edtech
        fields = "__all__"