create table appointment
(
    appointmentid INTEGER
    patient INTEGER
    prepnurse INTEGER
    physician INTEGER
    start_dt_time TIMESTAMP
    end_dt_time TIMESTAMP
    examinationroom TEXT
)
select * from appointment
insert into appointment(appointmentid,patient,prepnurse,physician,start_dt_time,end_dt_time,eximanationroom)
values();
