.class final Lorg/parceler/NonParcelRepository$ByteParcelable$ByteParcelableCreator;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$ByteParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/parceler/NonParcelRepository$ByteParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/parceler/NonParcelRepository$1;

    .prologue
    .line 928
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$ByteParcelable$ByteParcelableCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$ByteParcelable$ByteParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$ByteParcelable;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$ByteParcelable;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 932
    new-instance v0, Lorg/parceler/NonParcelRepository$ByteParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$ByteParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$ByteParcelable$ByteParcelableCreator;->newArray(I)[Lorg/parceler/NonParcelRepository$ByteParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/parceler/NonParcelRepository$ByteParcelable;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 937
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$ByteParcelable;

    return-object v0
.end method