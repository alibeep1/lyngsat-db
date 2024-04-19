import { Table, Input, Button } from "antd";
import React from "react";
import { SearchOutlined } from '@ant-design/icons';




// interface MyTableProps {
//     columnNames: { title: string; dataIndex: string; key: string; }[];
//     data: []; // replace 'any' with the type of your data
//     style: React.CSSProperties;
// }
// // const MyTable: React.FC<MyTableProps> = ({ columnNames, data, style }) => {
// //     return <Table style={{ ...style }} columns={columnNames} dataSource={data} />
// // }

interface MyTableProps {
    columnNames: { title: string; dataIndex: string; key: string; }[];
    data: any[]; // replace 'any' with the type of your data
    style: React.CSSProperties;
    setClickedRow?: (row: any) => void; // Make this optional
}

// import { Input } from 'antd';

const MyTable: React.FC<MyTableProps> = ({ columnNames, data, style, setClickedRow }) => {
    const columnsWithFilters = columnNames.map(column => ({
        ...column,
        filterMultiple: false,
        filterDropdown: ({ setSelectedKeys, selectedKeys, confirm, clearFilters }) => (
            <div style={{ padding: 8 }}>
                <Input
                    placeholder={`Search ${column.title}`}
                    value={selectedKeys[0]}
                    onChange={e => setSelectedKeys(e.target.value ? [e.target.value] : [])}
                    onPressEnter={() => confirm()}
                    style={{ width: 188, marginBottom: 8, display: 'block' }}
                />
                <Button
                    type="primary"
                    onClick={() => confirm()}
                    size="small"
                    style={{ width: 90, marginRight: 8 }}
                >
                    Search
                </Button>
                <Button onClick={() => clearFilters()} size="small" style={{ width: 90 }}>
                    Reset
                </Button>
            </div>
        ),
        filterIcon: filtered => <SearchOutlined style={{ color: filtered ? '#1890ff' : undefined }} />,
        onFilter: (value, record) => record[column.dataIndex].toString().toLowerCase().includes(value.toString().toLowerCase()),
        sorter: (a, b) => b[column.dataIndex].length - a[column.dataIndex].length,
        sortDirections: ['descend' as const],
    }));

    return <Table onRow={(clickedRow) => ({
        onClick: () => {
            if (setClickedRow) {
                setClickedRow(clickedRow)
            }
        }
    })} style={{ ...style }} columns={columnsWithFilters} dataSource={data} />;
}




export default MyTable;

