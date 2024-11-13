from rest_framework.response import Response
from rest_framework import status
from rest_framework import viewsets
from django.http import JsonResponse
from .models import *
from .serializers import*


class GetMethod(viewsets.ModelViewSet):
    queryset = Ire.objects.all()
    serializer_class = IreSerializer

    def list(self, request, *args, **kwargs):
        data = list(Ire.objects.all().values())
        return Response(data)

    def retrieve(self, request, *args, **kwargs):
        data = list(Ire.objects.filter(id=kwargs['pk']).values())
        return Response(data)

    def create(self, request, *args, **kwargs):
        Ire_serializer_data = IreSerializer(data=request.data)
        if Ire_serializer_data.is_valid():
            Ire_serializer_data.save()
            status_code = status.HTTP_201_CREATED
            return Response({"message": "Added Sucessfully", "status": status_code})
        else:
            status_code = status.HTTP_400_BAD_REQUEST
            return Response({"message": "please fill all fields", "status": status_code})

    def destroy(self, request, *args, **kwargs):
        Ire_data = Ire.objects.filter(id=kwargs['pk'])
        if Ire_data:
            Ire_data.delete()
            status_code = status.HTTP_201_CREATED
            return Response({"message": "delete Sucessfully", "status": status_code})
        else:
            status_code = status.HTTP_400_BAD_REQUEST
            return Response({"message": "data not found", "status": status_code})

