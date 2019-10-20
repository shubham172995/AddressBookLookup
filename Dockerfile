FROM python:3
ADD AddressBookLookUp.py /
RUN pip install pystrich
CMD [ "python", "./AddressBookLookUp.py" ]
