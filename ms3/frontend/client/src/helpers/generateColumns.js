const generateColumns = (data) => {
    if (!data || data.length === 0) {
        return [];
    }

    // Get the keys from the first object in the data array
    const keys = Object.keys(data[0]);

    // Map the keys to the format expected by the Ant Design Table
    const columns = keys.map((key) => ({
        title: key,
        dataIndex: key,
        key: key,
    }));
    // console.log("columns: ", columns)
    return columns;
};

export default generateColumns;