.class public interface abstract Lorg/parceler/ParcelConverter;
.super Ljava/lang/Object;
.source "ParcelConverter.java"

# interfaces
.implements Lorg/parceler/TypeRangeParcelConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/parceler/ParcelConverter$EmptyConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/parceler/TypeRangeParcelConverter",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field public static final CONVERT_FROM_PARCEL:Ljava/lang/String; = "fromParcel"

.field public static final CONVERT_TO_PARCEL:Ljava/lang/String; = "toParcel"
