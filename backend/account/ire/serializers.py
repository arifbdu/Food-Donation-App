from rest_framework import serializers
from .models  import*

class IreSerializer(serializers.ModelSerializer):
    class Meta():
        model = Ire
        fields = "__all__"