from rest_framework.response import Response
from rest_framework import status
from rest_framework import viewsets
from django.http import JsonResponse
from .models import *
from .serializers import*


class GetMethod(viewsets.ModelViewSet):
    queryset = Edtech.objects.all()
    serializer_class = EdtechSerializer

    def list(self, request, *args, **kwargs):
        data = list(Edtech.objects.all().values())
        return Response(data)

    def retrieve(self, request, *args, **kwargs):
        data = list(Edtech.objects.filter(id=kwargs['pk']).values())
        return Response(data)

    def create(self, request, *args, **kwargs):
        Edtech_serializer_data = EdtechSerializer(data=request.data)
        if Edtech_serializer_data.is_valid():
            Edtech_serializer_data.save()
            status_code = status.HTTP_201_CREATED
            return Response({"message": "Added Sucessfully", "status": status_code})
        else:
            status_code = status.HTTP_400_BAD_REQUEST
            return Response({"message": "please fill all fields", "status": status_code})

    def destroy(self, request, *args, **kwargs):
        Edtech_data = Edtech.objects.filter(id=kwargs['pk'])
        if Edtech_data:
            Edtech_data.delete()
            status_code = status.HTTP_201_CREATED
            return Response({"message": "delete Sucessfully", "status": status_code})
        else:
            status_code = status.HTTP_400_BAD_REQUEST
            return Response({"message": "data not found", "status": status_code})

