create TABLE prescribes
(
    physician INTEGER
    patient INTEGER
    medication INTEGER
    date TIMESTAMP
    appointment INTEGER
    dose TEXT
)
select * from prescribes
insert into prescribes(physician,patient,medication,date,appointment,dose)
values();
