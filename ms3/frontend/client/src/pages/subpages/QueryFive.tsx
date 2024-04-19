import React, { useEffect, useState } from "react";
import MyDiv from "../../components/MyDiv";
import { useForm, SubmitHandler, Controller } from "react-hook-form"
import { IQueryOne, IQueryTwo, IUser, useUserStore } from "../../store/userstore";
import client, { ROUTES } from "../../API/client";
import { Input, notification, Button } from "antd";
import generateColumns from "../../helpers/generateColumns";
import MyTable from "../../components/MyTable";
// import { Button } from "bootstrap";
// import { IUser, useUserStore } from '../../store/userstore'


const QueryFive = () => {
    const [data, setData] = useState([])
    const [columns, setColumns] = React.useState<{ title: string; dataIndex: string; key: string; }[]>([]);

    // const userEmail = useUserStore((state) => state.Email);
    useEffect(() => {
        client.get(ROUTES[4]).then((response) => {
            console.log("RECEIVED SERVER RESPONSE: ", response.data.result);
            setData(response.data.result)

            let colNames = generateColumns(response.data.result)
            setColumns(colNames)

            notification.success({
                message: 'Great',
                placement: 'bottomRight'
            });

            // redirect('/')

        }).catch((error) => {
            notification.error({
                message: 'Oops',
                description: `Encountered error: ${error}`,
                placement: 'bottomRight',

            });
        })
    }, [])



    return (
        <MyDiv style={{ height: '100%' }}>
            <MyTable columnNames={columns} data={data} style={{ height: '20px' }} />
        </MyDiv>
    )
}

export default QueryFive;