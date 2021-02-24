function organisedData=DataOrganisation_test(data, cabin_dict , ticket_dict)

% disp(data);

data.Sex=[strcmp(data.Sex,'male')];
data.Age=fillmissing(data.Age,"constant",mean(data.Age,'omitnan'));
data.Parch=fillmissing(data.Parch,"constant",mean(data.Parch,'omitnan'));
data.SibSp=fillmissing(data.SibSp,"constant",mean(data.SibSp,'omitnan'));

[r1]=find(strcmp(data.Embarked,'C'));
[r2]=find(strcmp(data.Embarked,'Q'));
[r3]=find(strcmp(data.Embarked,'S'));


temp=zeros(size(data,1),1);
temp(r1)=1;
temp(r2)=2;
temp(r3)=3;
data.Embarked=temp;




pp=zeros(size(data,1),1);
for i=1:size(cabin_dict,1)
    [r]=find(strcmp(cabin_dict(i),data.Cabin));
    pp(r)=i;
end
data.Cabin=pp;


pp=zeros(size(data,1),1);
for i=1:size(ticket_dict,1)
    [r]=find(strcmp(ticket_dict(i),data.Ticket));
    pp(r)=i;
end
data.Ticket=pp;


organisedData=data;



