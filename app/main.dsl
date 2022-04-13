import "commonReactions/all.dsl";

context {
    input phone: string;
}

start node root
{
    do
    {
        #connectSafe($phone);
        #waitForSpeech(1000);
        #sayText("Welcome to postal service. How can I help you?");
        wait *;
    }
    transitions
    {
        track_parcel: goto track_parcel on #messageHasIntent("track_parcel");
        missed_delivery: goto missed_delivery on #messageHasIntent("missed_delivery");
        where_is_point: goto where_is_point on #messageHasIntent("where_is_point");
        return_shipment: goto return_shipment on #messageHasIntent("return_shipment");
    }
}
node track_parcel
{
    do
    {
        #sayText("Unfortunately, the parcel tracking function has not yet been implemented.");
        exit;
    }
    transitions
    {
    }
}
node missed_delivery
{
    do
    {
        #sayText("Unfortunately, the function of overwriting the delivery of a parcel has not yet been implemented.");
        exit;
    }
    transitions
    {
    }
}
node where_is_point
{
    do
    {
        #sayText("Unfortunately, the package tracking function is not implemented.");
        exit;
    }
    transitions
    {
    }
}
node return_shipment
{
    do
    {
        #sayText("Unfortunately, the cancel delivery feature has not yet been implemented.");
        exit;
    }
    transitions
    {
    }
}
